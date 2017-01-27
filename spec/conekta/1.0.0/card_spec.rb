require 'spec_helper'

describe Conekta::Card do
  include_context "API 1.0.0"
  let(:customer_data) do
    {
      email: "hola@hola.com",
      name:  "John Constantine",
      cards: ["tok_test_visa_4242"]
    }
  end

  let(:customer) do
    Conekta::Customer.create(customer_data)
  end

  let(:card) { customer.cards.first }

  context "deleting cards" do
    it "successful card delete" do
      card.delete

      expect(card.deleted).to eq(true)
    end
  end

  context "updating cards" do
    it "successful card update" do
      card.update(active: false)

      expect(card.active).to eq(false)
    end

    it "unsuccessful card update" do
      expect {
        card.update(token: "tok_test_visa_4241")
      }.to raise_error(Conekta::ParameterValidationError)
    end
  end
end
