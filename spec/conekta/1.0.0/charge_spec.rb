require 'spec_helper'

describe Conekta::Charge do
  include_context "API 1.0.0"

  let(:payment_method) do
    {
      amount: 2000, 
      currency: 'mxn', 
      description: 'Some desc',
      details: {
        name: "Wolverine",
        email: "logan.thomas@xmen.org",
        phone: "403-342-0642",
        line_items: [{
          name: "Shades",
          description: "Imported From Mex.",
          unit_price: 20000,
          quantity: 1,
          sku: "cohb_s1",
          category: "eyewear"
        }]
      }
    }
  end

  let(:invalid_payment_method) do
    {
      amount: 10, 
      currency: 'mxn', 
      description: 'Some desc',
      details: {
        name: "Wolverine",
        email: "logan.thomas@xmen.org",
        phone: "403-342-0642",
        line_items: [{
          name: "Shades",
          description: "Imported From Mex.",
          unit_price: 20000,
          quantity: 1,
          sku: "cohb_s1",
          category: "eyewear"
        }]
      }
    }
  end

  let(:card) { { card: 'tok_test_visa_4242' } }

  context "get" do
    it "succesfully gets charge" do
      transaction = Conekta::Charge.create(payment_method.merge(card))
      expect(transaction.status).to eq("paid")
      charge = Conekta::Charge.find(transaction.id)
      expect(charge).to be_a(Conekta::Charge)
    end

    it "test succesful where" do
      charges = Conekta::Charge.where
      charge = charges.first
      expect(charge).to be_a(Conekta::Charge)
    end
    it "test succesful where status 'pending_payment'" do
      charges = Conekta::Charge.where({status: 'pending_payment'})
      charges.map{|index, charge|
        expect(charge.status).to eq("pending_payment")
      }
    end
    it "test succesful where status 'paid'" do
      charges = Conekta::Charge.where({status: 'paid'})
      charges.map{|index, charge|
        expect(charge.status).to eq("paid")
      }
    end
  end

  context "creating charges" do
    it "tests succesful bank payment" do
      bank = { bank: { 'type' => 'banorte' } }
      bank_payment = Conekta::Charge.create(payment_method.merge(bank))
      expect(bank_payment.status).to eq("pending_payment")
    end

    it "tests succesful card payment" do
      card_payment = Conekta::Charge.create(payment_method.merge(card))
      expect(card_payment.status).to eq("paid")
    end

    it "tests succesful oxxo payment" do
      oxxo = { cash: { 'type' => 'oxxo' } }
      cash_payment = Conekta::Charge.create(payment_method.merge(oxxo))
      expect(cash_payment.status).to eq("pending_payment")
    end

    it "tests succesful card payment capture" do
      # pm = @valid_payment_method
      # card = @valid_visa_card
      capture = { capture: false }
       transaction = Conekta::Charge.create(
        payment_method.merge(card).merge(capture)
      )
      expect(transaction.status).to eq("pre_authorized")
      transaction.capture
      expect(transaction.status).to eq("paid")
    end

    it "test unsuccesful create" do
      expect {
        Conekta::Charge.create(invalid_payment_method.merge(card))
      }.to raise_error(
        Conekta::ParameterValidationError,
        "The minimum for card payments is 3 pesos. Check that the amount " +
        "is in cents as explained in the documentation."
        )
    end
  end

  context "refunding charges" do
    it "test susccesful refund" do
      transaction = Conekta::Charge.create(payment_method.merge(card))
      expect(transaction.status).to eq("paid")
      transaction.refund
      expect(transaction.status).to eq("refunded")
    end

    it "test unsusccesful refund" do
      transaction = Conekta::Charge.create(payment_method.merge(card))
      expect(transaction.status).to eq("paid")

      expect { transaction.refund(3000) }.to raise_error(
        Conekta::ProcessingError,
        "The amount to refund exceeds the charge total."
      )
    end
  end

  context 'capturing charges' do
    it 'captures an existing charge' do
      amount_before_capture = 2000
      amount_after_capture  = 1000
      capture = { capture: false }
       transaction = Conekta::Charge.create(
        payment_method.merge(card).merge(capture)
      )
      expect(transaction.status).to eq('pre_authorized')
      expect(transaction.amount).to be == amount_before_capture 
      transaction.capture(1000)
      expect(transaction.amount).to be == amount_after_capture
      expect(transaction.status).to eq("paid")
    end
  end
end
