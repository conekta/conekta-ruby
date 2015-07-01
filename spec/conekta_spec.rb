require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
describe :conekta_tests do
  before(:all) { Conekta.api_key = '1tv5yJp3xnVZ7eK67m4h' }

  # moved Payout specs to spec/lib/payout_spec.rb

  describe :charge_tests do
    p "charge tests"
    before :each do
      @valid_payment_method = {amount: 2000, currency: 'mxn', description: 'Some desc'}
      @invalid_payment_method = {amount: 10, currency: 'mxn', description: 'Some desc'}
      @valid_visa_card = {card: 'tok_test_visa_4242'}
    end
    it "succesful get charge" do
      pm = @valid_payment_method
      card = @valid_visa_card
      cpm = Conekta::Charge.create(pm.merge(card))
      expect(cpm.status).to eq("paid")
      pm = Conekta::Charge.find(cpm.id)
      expect(pm.class.class_name).to eq("Charge")
    end
    it "test succesful where" do
      charges = Conekta::Charge.where
      expect(charges.class.class_name).to eq("ConektaObject")
      expect(charges[0].class.class_name).to eq("Charge")
    end
    it "tests succesful bank pm create" do
      pm = @valid_payment_method
      bank = {bank: {'type' => 'banorte'}}
      bpm = Conekta::Charge.create(pm.merge(bank))
      expect(bpm.status).to eq("pending_payment")
    end
    it "tests succesful card pm create" do
      pm = @valid_payment_method
      card = @valid_visa_card
      cpm = Conekta::Charge.create(pm.merge(card))
      expect(cpm.status).to eq("paid")
    end
    it "tests succesful oxxo pm create" do
      pm = @valid_payment_method
      oxxo = {cash: {'type' => 'oxxo'}}
      bpm = Conekta::Charge.create(pm.merge(oxxo))
      expect(bpm.status).to eq("pending_payment")
    end
    it "test unsuccesful pm create" do
      pm = @invalid_payment_method
      card = @valid_visa_card
      begin
        cpm = Conekta::Charge.create(pm.merge(card))
      rescue Conekta::Error => e
        expect(e.message).to eq("The minimum for card payments is 3 pesos. Check that the amount is in cents as explained in the documentation.")
      end
    end
    it "test susccesful refund" do
      pm = @valid_payment_method
      card = @valid_visa_card
      cpm = Conekta::Charge.create(pm.merge(card))
      expect(cpm.status).to eq("paid")
      cpm.refund
      expect(cpm.status).to eq("refunded")
    end
    it "test unsusccesful refund" do
      pm = @valid_payment_method
      card = @valid_visa_card
      cpm = Conekta::Charge.create(pm.merge(card))
      expect(cpm.status).to eq("paid")
      begin
        cpm.refund(3000)
      rescue Conekta::Error => e
        expect(e.message).to eq("The order does not exist or the amount to refund is invalid")
      end
    end
    it "tests succesful card pm create" do
      pm = @valid_payment_method
      card = @valid_visa_card
      capture = {capture: false}
      cpm = Conekta::Charge.create(pm.merge(card).merge(capture))
      expect(cpm.status).to eq("pre_authorized")
      cpm.capture
      expect(cpm.status).to eq("paid")
    end
  end
  describe :customer_tests do
    p "customer tests"
    it "successful customer create" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      expect(customer.class.class_name).to eq("Customer")
    end
    it "successful customer get" do
      c = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      customer = Conekta::Customer.find(c.id)
      expect(customer.class.class_name).to eq("Customer")
    end
    it "successful customer where" do
      customers = Conekta::Customer.where
      expect(customers.class.class_name).to eq("ConektaObject")
      expect(customers[0].class.class_name).to eq("Customer")
    end
    it "successful customer delete" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      customer.delete
      expect(customer.deleted).to eq(true)
    end
    it "successful customer update" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      customer.update({name: 'Logan', email: 'logan@x-men.org'})
      expect(customer.name).to eq('Logan')
    end
    it "successful customer update" do
      begin
        customer = Conekta::Customer.create({
          :cards => ["tok_test_visa_4241"],
        })
      rescue Conekta::Error => e
        expect(e.message).to eq("Object tok_test_visa_4241 could not be found.")
      end
    end
    it "add card to customer" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      card = customer.create_card(:token => 'tok_test_visa_1881')
      expect(customer.cards.count).to eq(2)
      expect(customer.cards.last.last4).to eq('1881')
    end
    it "test delete card" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      card = customer.cards[0].delete
      expect(card.deleted).to eq(true)
    end
    it "test update card" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      customer.cards[0].update({token: 'tok_test_mastercard_4444', active: false})
      expect(customer.cards[0].last4).to eq('4444')
    end
    it "test succesful create subscription" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      subscription = customer.create_subscription({plan: 'gold-plan'})
      expect(subscription.class.class_name).to eq('Subscription')
    end
    it "test succesful update subscription" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      subscription = customer.create_subscription({plan: 'gold-plan'})
      begin
        plan = Conekta::Plan.find('gold-plan2')
      rescue Conekta::Error => e
        plan = Conekta::Plan.create({
          id: "gold-plan2",
          name: "Gold Plan",
          amount: 10000,
          currency: "MXN",
          interval: "month",
          frequency: 1,
          trial_period_days: 15,
          expiry_count: 12
        })
      end
      subscription.update({plan: plan.id})
      expect(subscription.plan_id).to eq('gold-plan2')
    end
    it "test unsuccesful create subscription" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      begin
        subscription = customer.create_subscription({plan: 'unexistent-plan'})
      rescue Conekta::Error => e
        expect(e.message).to eq("Object Plan unexistent-plan could not be found.")
      end
    end
    it "test succesful pause subscription" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      subscription = customer.create_subscription({plan: 'gold-plan'})
      subscription.pause
      expect(subscription.status).to eq('paused')
    end
    it "test succesful resume subscription" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      subscription = customer.create_subscription({plan: 'gold-plan'})
      subscription.resume
      expect(subscription.status).to eq('active')
    end
    it "test succesful cancel subscription" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      subscription = customer.create_subscription({plan: 'gold-plan'})
      subscription.cancel
      expect(subscription.status).to eq('canceled')
    end
  end
  describe :error_tests do
    p "error tests"
    it "test no id error" do
      begin
        charge = Conekta::Charge.find(nil)
      rescue Conekta::Error => e
        expect(e.message).to eq('Could not get the id of Charge instance.')
      end
    end
    it "test no connection error" do
      api_url = Conekta::api_base
      Conekta::api_base = 'http://localhost:3001'
      begin
        customer = Conekta::Customer.create({cards: ["tok_test_visa_4242"]})
      rescue Exception => e
        expect(e.class_name).to eq("NoConnectionError")
      end
      Conekta::api_base = api_url
    end
    it "test api error" do
      begin
        customer = Conekta::Customer.create({cards: {0=>"tok_test_visa_4242"}})
      rescue Conekta::Error => e
        expect(e.class_name).to eq("ParameterValidationError")
      end
    end
    it "test authentication error" do
      Conekta::api_key = ""
      begin
        customer = Conekta::Customer.create({cards: ["tok_test_visa_4242"]})
      rescue Conekta::Error => e
        expect(e.class_name).to eq("AuthenticationError")
      end
      Conekta.api_key = '1tv5yJp3xnVZ7eK67m4h'
    end
    it "test parameter validation error" do
      begin
        plan = Conekta::Plan.create({id: 'gold-plan'})
      rescue Conekta::Error => e
        expect(e.class_name).to eq("ParameterValidationError")
      end
    end
    it "test processing error" do
      charge = nil
      charges = Conekta::Charge.where()
      charges.each do |(k,v)|
        if v.status == "pre_authorized"
          charge = v
          break
        end
      end
      begin
        if charge
          charge.capture
        end
      rescue Conekta::Error => e
        expect(e.class_name).to eq("ProcessingError")
      end
    end
    it "test resource not found error" do
      begin
        charge = Conekta::Charge.find(1)
      rescue Conekta::Error => e
        expect(e.class_name).to eq("ResourceNotFoundError")
      end
    end
  end
  describe :event_tests do
    p "event tests"
    it "test succesful where" do
      events = Conekta::Event.where
      expect(events.class_name).to eq("ConektaObject")
      expect(events[0].class_name).to eq("Event")
      if !events[0].webhook_logs.empty?
        expect(events[0].webhook_logs.first.class_name).to eq("WebhookLog")
      end
    end
  end
  describe :token_tests do
    p "token tests"
  end
  describe :plan_tests do
    p "plan tests"

    it "test succesful get plan" do
      plans = Conekta::Plan.where
      p = plans.first;
      plan = Conekta::Plan.find(p.id)
      expect(plan.class_name).to eq("Plan")
    end

    it "test succesful where" do
      plans = Conekta::Plan.where
      expect(plans.class_name).to eq("ConektaObject")
      expect(plans.first.class_name).to eq("Plan")
    end

    it "test succesful create plan" do
      plan = Conekta::Plan.create({
        id: ((0...8).map { (65 + rand(26)).chr }.join),
        name: "Gold Plan",
        amount: 10000,
        currency: "MXN",
        interval: "month",
        frequency: 10,
        trial_period_days: 15,
        expiry_count: 12
      }
                                 )
      expect(plan.class_name).to eq("Plan")
    end

    it "test update plan" do
      plans = Conekta::Plan.where
      plan = plans.first
      plan.update({name: "Silver Plan"})
      expect(plan.name).to eq("Silver Plan")
    end

    it "test delete plan" do
      plans = Conekta::Plan.where
      plan = plans.first
      plan.delete
      expect(plan.deleted).to eq(true)
    end

  end
  describe :webhook_tests do
    p "webhook tests"
    before :each do
      @events = { events: ["charge.created", "charge.paid", "charge.under_fraud_review",
      "charge.fraudulent", "charge.refunded", "charge.created", "customer.created",
      "customer.updated", "customer.deleted", "webhook.created", "webhook.updated",
      "webhook.deleted", "charge.chargeback.created", "charge.chargeback.updated",
      "charge.chargeback.under_review", "charge.chargeback.lost", "charge.chargeback.won",
      "payout.created", "payout.retrying", "payout.paid_out", "payout.failed",
      "plan.created", "plan.updated", "plan.deleted", "subscription.created",
      "subscription.paused", "subscription.resumed", "subscription.canceled",
      "subscription.expired", "subscription.updated", "subscription.paid",
      "subscription.payment_failed", "payee.created", "payee.updated",
      "payee.deleted", "payee.payout_method.created",
      "payee.payout_method.updated", "payee.payout_method.deleted"] }
      @url = { url: "http://localhost:3000/my_listener" }
    end
    it "succesful get charge" do
      events = @events
      url = @url
      webhook =  Conekta::Webhook.create(url.merge(events))
      expect(webhook.webhook_url).to eq(url[:url])
      webhook = Conekta::Webhook.find(webhook.id)
      expect(webhook.webhook_url).to eq(url[:url])
      webhook.update({url: "http://localhost:2000/my_listener"})
      expect(webhook.webhook_url).to eq("http://localhost:2000/my_listener")
      webhook.delete
    end
  end

  describe ".config" do
    it "sets the api key initializer style" do
      Conekta.config { |c| c.api_key = "abc" }

      expect(Conekta.api_key).to eq("abc")
    end

    it "sets the api version initializer style" do
      Conekta.config { |c| c.api_version = "1.0" }

      expect(Conekta.api_version).to eq("1.0")
    end

    it "sets the api locale initializer style" do
      Conekta.config { |c| c.locale = "es" }

      expect(Conekta.locale).to eq("es")
    end
  end
end
