require 'spec_helper'

describe Conekta::Source do
  include_context "API 1.1.0"

  let(:customer_data) do
    {
      email:   "hola@hola.com",
      name:    "John Constantine",
      sources:  [ { token_id: "tok_test_visa_4242", type: "card" }]
    }
  end

  let(:customer) { Conekta::Customer.create(customer_data) }
  let(:source)   { customer.sources.first }

  context "deleting sources" do
    it "successful source delete" do
      source.delete

      expect(source.deleted).to eq(true)
    end
  end

  context "updating sources" do
    it "successful source update" do
      source.update(exp_month: 12)

      expect(source.exp_month).to eq("12")
    end

    it "unsuccessful source update" do
      expect {
        source.update(token_id: "tok_test_visa_4241")
      }.to raise_error(Conekta::ParameterValidationError)
    end
  end
end
