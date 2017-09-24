require 'spec_helper'

describe Conekta::Error do
  include_context "API 2.0.0"

  let(:card) { { cards: ["tok_test_visa_4242"] } }

  it "test no id error" do
    expect{
      Conekta::Customer.find(nil)
    }.to raise_error(Conekta::Error)
  end

  it "test no connection error" do
    api_url = Conekta::api_base
    Conekta::api_base = 'http://localhost:3001'

    expect{
      Conekta::Customer.create(card)
    }.to raise_error(Conekta::NoConnectionError)

    # cleanup
    Conekta::api_base = api_url
  end

  it "test api error" do
    expect{ 
      Conekta::Customer.create({
        cards: {
          0 => "tok_test_visa_4242"
        }
      })
    }.to raise_error(Conekta::ParameterValidationError)
  end

  it "test parameter validation error" do
    expect{
      Conekta::Order.create({})
    }.to raise_error(Conekta::ParameterValidationError)
  end

  it "test resource not found error" do
    expect{
      Conekta::Order.find(1)
    }.to raise_error(Conekta::ResourceNotFoundError)
  end

  it "test authentication error" do
    api_key = Conekta::api_key
    Conekta::api_key = ""

    expect{
      Conekta::Customer.create({
        cards: ["tok_test_visa_4242"]
      })
    }.to raise_error(Conekta::AuthenticationError)

    # cleanup
    Conekta::api_key = api_key
  end
end
