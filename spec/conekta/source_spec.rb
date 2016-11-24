require 'spec_helper'

describe Conekta::Source do
  before(:all) do
    Conekta.api_base = "http://0.0.0.0:3000"
    Conekta.api_version = "1.1.0"
    Conekta.api_key = "FAKIOXUSc4ca4238a0b9"
  end

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

  after(:all) do
    Conekta.api_base = "https://api.conekta.io"
    Conekta.api_key = '1tv5yJp3xnVZ7eK67m4h'
    Conekta.api_version = "1.0.0"
  end
end
