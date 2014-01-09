require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
describe :conekta_tests do
  Conekta.api_key = '1tv5yJp3xnVZ7eK67m4h'
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
      cpm.status.should eq("paid")
      pm = Conekta::Charge.find(cpm.id)
      pm.class.class_name.should eq("Charge")
    end
    it "test succesful where" do
      charges = Conekta::Charge.where
      charges.class.class_name.should eq("ConektaObject")
      charges[0].class.class_name.should eq("Charge")
    end
    it "tests succesful bank pm create" do
      pm = @valid_payment_method
      bank = {bank: {'type' => 'banorte'}}
      bpm = Conekta::Charge.create(pm.merge(bank))
      bpm.status.should eq("pending_payment")
    end
    it "tests succesful card pm create" do
      pm = @valid_payment_method
      card = @valid_visa_card
      cpm = Conekta::Charge.create(pm.merge(card))
      cpm.status.should eq("paid")
    end
    it "tests succesful oxxo pm create" do
      pm = @valid_payment_method
      oxxo = {cash: {'type' => 'oxxo'}}
      bpm = Conekta::Charge.create(pm.merge(oxxo))
      bpm.status.should eq("pending_payment")
    end
    it "test unsuccesful pm create" do
      pm = @invalid_payment_method
      card = @valid_visa_card
      begin
        cpm = Conekta::Charge.create(pm.merge(card))
      rescue Conekta::Error => e
        e.message.should eq("The minimum purchase is 3 MXN pesos for card payments")
      end
    end
    it "test susccesful refund" do
      pm = @valid_payment_method
      card = @valid_visa_card
      cpm = Conekta::Charge.create(pm.merge(card))
      cpm.status.should eq("paid")
      cpm.refund
      cpm.status.should eq("refunded")
    end
    it "test unsusccesful refund" do
      pm = @valid_payment_method
      card = @valid_visa_card
      cpm = Conekta::Charge.create(pm.merge(card))
      cpm.status.should eq("paid")
      begin
        cpm.refund(3000)
      rescue Conekta::Error => e
        e.message.should eq("The order does not exist or the amount to refund is invalid")
      end
    end
    it "tests succesful card pm create" do
      pm = @valid_payment_method
      card = @valid_visa_card
      capture = {capture: false}
      cpm = Conekta::Charge.create(pm.merge(card).merge(capture))
      cpm.status.should eq("pre_authorized")
      cpm.capture
      cpm.status.should eq("paid")
    end
  end
  describe :customer_tests do
    p "customer tests"
    it "successful customer create" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      customer.class.class_name.should eq("Customer")
    end
    it "successful customer get" do
      c = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      customer = Conekta::Customer.find(c.id)
      customer.class.class_name.should eq("Customer")
    end
    it "successful customer where" do
      customers = Conekta::Customer.where
      customers.class.class_name.should eq("ConektaObject")
      customers[0].class.class_name.should eq("Customer")
    end
    it "successful customer delete" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      customer.delete
      customer.deleted.should eq(true)
    end
    it "successful customer update" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      customer.update({name: 'Logan', email: 'logan@x-men.org'})
      customer.name.should eq('Logan')
    end
    it "successful customer update" do
      begin
        customer = Conekta::Customer.create({
          :cards => ["tok_test_visa_4241"],
        })
      rescue Conekta::Error => e
        e.message.should eq("Token 'tok_test_visa_4241' could not be found.")
      end
    end
    it "add card to customer" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      card = customer.create_card(:token => 'tok_test_visa_1881')
      customer.cards.count.should eq(2)
      customer.cards.last.last4.should eq('1881')
    end
    it "test delete card" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      card = customer.cards[0].delete
      card.deleted.should eq(true)
    end
    it "test update card" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      customer.cards[0].update({token: 'tok_test_mastercard_4444', active: false})
      customer.cards[0].last4.should eq('4444')
    end
    it "test succesful create subscription" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      subscription = customer.create_subscription({plan: 'gold-plan'})
      subscription.class.class_name.should eq('Subscription')
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
      subscription.plan_id.should eq('gold-plan2')
    end
    it "test unsuccesful create subscription" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      begin
        subscription = customer.create_subscription({plan: 'unexistent-plan'})
      rescue Conekta::Error => e
        e.message.should eq("Plan 'unexistent-plan' does not exist and cannot be used to create a new subsription.")
      end
    end
    it "test succesful pause subscription" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      subscription = customer.create_subscription({plan: 'gold-plan'})
      subscription.pause
      subscription.status.should eq('paused')
    end
    it "test succesful resume subscription" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      subscription = customer.create_subscription({plan: 'gold-plan'})
      subscription.resume
      subscription.status.should eq('active')
    end
    it "test succesful cancel subscription" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
      })
      subscription = customer.create_subscription({plan: 'gold-plan'})
      subscription.cancel
      subscription.status.should eq('canceled')
    end
  end
  describe :error_tests do
    p "error tests"
    it "test no id error" do
      begin
        charge = Conekta::Charge.find(nil)
      rescue Conekta::Error => e
        e.message.should eq('Could not get the id of Charge instance.')
      end
    end
    it "test no connection error" do
      api_url = Conekta::api_base
      Conekta::api_base = 'http://localhost:3001'
      begin
        customer = Conekta::Customer.create({cards: ["tok_test_visa_4242"]})
      rescue Exception => e
        e.class_name.should eq("NoConnectionError")
      end
      Conekta::api_base = api_url
    end
    it "test api error" do
      begin
        customer = Conekta::Customer.create({cards: {0=>"tok_test_visa_4242"}})
      rescue Conekta::Error => e
        e.class_name.should eq("ApiError")
      end
    end
    it "test authentication error" do
      Conekta::api_key = ""
      begin
        customer = Conekta::Customer.create({cards: ["tok_test_visa_4242"]})
      rescue Conekta::Error => e
        e.class_name.should eq("AuthenticationError")
      end
      Conekta.api_key = '1tv5yJp3xnVZ7eK67m4h'
    end
    it "test parameter validation error" do
      begin
        plan = Conekta::Plan.create({id: 'gold-plan'})
      rescue Conekta::Error => e
        e.class_name.should eq("ParameterValidationError")
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
        e.class_name.should eq("ProcessingError")
      end
    end
    it "test resource not found error" do
      begin
        charge = Conekta::Charge.find(1)
      rescue Conekta::Error => e
        e.class_name.should eq("ResourceNotFoundError")
      end
    end
  end
  describe :event_tests do
    p "event tests"
    it "test succesful where" do
      events = Conekta::Event.where
      events.class_name.should eq("ConektaObject")
      events[0].class_name.should eq("Event")
    end
  end
  describe :token_tests do
    p "token tests"
    it "test succesful where" do
      token = Conekta::Token.find("tok_test_visa_4242")
      token.class_name.should eq("Token")
    end
  end
  describe :plan_tests do
    p "plan tests"
    it "test succesful get plan" do
      plans = Conekta::Plan.where
      p = plans.first;
      plan = Conekta::Plan.find(p.id)
      plan.class_name.should eq("Plan")
    end
    it "test succesful where" do
      plans = Conekta::Plan.where
      plans.class_name.should eq("ConektaObject")
      plans.first.class_name.should eq("Plan")
    end
    it "test succesful create plan" do
      plans = Conekta::Plan.where
      plan = Conekta::Plan.create({
					id: "gold-plan#{plans.count}",
					name: "Gold Plan",
					amount: 10000,
					currency: "MXN",
					interval: "month",
					frequency: 10,
					trial_period_days: 15,
					expiry_count: 12
					}
			)
      plan.class_name.should eq("Plan")
    end
    it "test update plan" do
      plans = Conekta::Plan.where
      plan = plans.first
      plan.update({name: "Silver Plan"})
      plan.name.should eq("Silver Plan")
    end
    it "test delete plan" do
      plans = Conekta::Plan.where
      plan = plans.first
      plan.delete
      plan.deleted.should eq(true)
    end
  end
end
