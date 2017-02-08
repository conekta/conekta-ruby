require 'spec_helper'

describe Conekta::Customer do
  include_context "API 1.0.0"
  let(:customer_data) { { :cards => ["tok_test_visa_4242"], email: "test@gmail.com", name: "Mario" } }

  context "creating customers" do
    it "successful customer create" do
      customer = Conekta::Customer.create(customer_data)
      expect(customer).to be_a(Conekta::Customer)
    end

    it "unsuccessful customer create" do
      expect { Conekta::Customer.create(
        :cards => ["tok_test_visa_4241"],
        :name => "Mario",
        :email => "test@gmail.com"
      ) }.to raise_error(
        Conekta::ParameterValidationError,
        "The token does not exist."
      )
    end
  end

  context "getting customers" do
    it "successful customer get" do
      transaction = Conekta::Customer.create(customer_data)
      customer = Conekta::Customer.find(transaction.id)
      expect(customer).to be_a(Conekta::Customer)
    end

    it "successful customer where" do
      customers = Conekta::Customer.where
      expect(customers.class.class_name).to eq("ConektaObject")
      expect(customers.first).to be_a(Conekta::Customer)
    end
  end

  context "updating customers" do
    it "successful customer update" do
      customer = Conekta::Customer.create({
        :cards => ["tok_test_visa_4242"],
        :name => "Mario",
        :email => "test@gmail.com"
      })
      customer.update({name: 'Logan', email: 'logan@x-men.org'})
      expect(customer.name).to eq('Logan')
    end
  end

  context "deleting customers" do
    it "successful customer delete" do
      customer = Conekta::Customer.create(customer_data)
      customer.delete
      expect(customer.deleted).to eq(true)
    end
  end

  context "adding cards" do
    let!(:customer) { Conekta::Customer.create(customer_data) }

    it "add card to customer" do
      card = customer.create_card(:token => 'tok_test_visa_1881')
      expect(customer.cards.count).to eq(2)
      expect(customer.cards.last.last4).to eq('1881')
    end

    it "test delete card" do
      card = customer.cards[0].delete
      expect(card.deleted).to eq(true)
    end

    it "test update card" do
      customer.cards[0].update(token: 'tok_test_mastercard_4444', active: false)
      expect(customer.cards[0].last4).to eq('4444')
    end
  end

  context "managing subscriptions" do
    let!(:customer) { Conekta::Customer.create(customer_data) }

    context "create" do
      it "test succesful create subscription" do
        subscription = customer.create_subscription({plan: 'gold-plan'})
        expect(subscription.class.class_name).to eq('Subscription')
      end

      it "test unsuccesful create subscription" do
        expect { customer.create_subscription({plan: 'unexistent-plan'}) }.to \
          raise_error(
            Conekta::ResourceNotFoundError,
            'The object Plan "unexistent-plan" could not be found.'
          )
      end
    end

    context "update" do
      it "test succesful update subscription" do
        subscription = customer.create_subscription({plan: 'gold-plan'})
        plan = find_or_create_plan('gold-plan2')

        subscription.update({plan: plan.id})
        expect(subscription.plan_id).to eq('gold-plan2')
      end
    end

    context "pause/resume" do
      let!(:subscription) { customer.create_subscription({plan: 'gold-plan'}) }

      it "test succesful pause subscription" do
        subscription.pause
        expect(subscription.status).to eq('paused')
      end

      it "test succesful resume subscription" do
        subscription.pause
        expect(subscription.status).to eq('paused')
        subscription.resume
        expect(subscription.status).to_not eq('paused')
      end
    end

    context "cancel" do
      it "test succesful cancel subscription" do
        subscription = customer.create_subscription({plan: 'gold-plan'})
        subscription.cancel
        expect(subscription.status).to eq('canceled')
      end
    end
  end
end

def find_or_create_plan(plan_id)
  plan = Conekta::Plan.find(plan_id)
rescue Conekta::Error => e
  plan = Conekta::Plan.create({
    id: plan_id,
    name: "Gold Plan",
    amount: 10000,
    currency: "MXN",
    interval: "month",
    frequency: 1,
    trial_period_days: 15,
    expiry_count: 12
  })
  return plan
end
