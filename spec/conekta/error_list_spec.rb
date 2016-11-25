require 'spec_helper'

describe Conekta::ErrorList do
  include_context "API 1.1.0"

  RSpec::Matchers.define :be_a_multiple_of do |expected|
    match do |actual|
      actual % expected == 0
    end
  end

  let(:card) { { cards: ["tok_test_visa_4242"] } }

  it "test no id error" do
    expect_to_raise_error_list(Conekta::ErrorList, nil, Conekta::Error) \
      { Conekta::Customer.find(nil) }
  end

  it "test no connection error" do
    api_url = Conekta::api_base
    Conekta::api_base = 'http://localhost:3001'
    expect_to_raise_error_list(Conekta::ErrorList, nil, Conekta::NoConnectionError) \
      { Conekta::Customer.create(card) }
    # cleanup
    Conekta::api_base = api_url
  end

  it "test api error" do
    expect_to_raise_error_list(Conekta::ErrorList, nil, Conekta::ParameterValidationError) \
      { Conekta::Customer.create({ cards: {0=>"tok_test_visa_4242"} }) }
  end

  it "test parameter validation error" do
    expect_to_raise_error_list(Conekta::ErrorList, nil, Conekta::ParameterValidationError) \
      { Conekta::Order.create({}) }
  end

  it "test resource not found error" do
    expect_to_raise_error_list(Conekta::ErrorList, nil, Conekta::ResourceNotFoundError) \
      { Conekta::Order.find(1) }
  end

  # Api changes pending
  xit "test authentication error" do
    api_key = Conekta::api_key
    Conekta::api_key = ""
    expect_to_raise_error_list(Conekta::ErrorList, nil, Conekta::AuthenticationError) \
      { Conekta::Customer.create({ cards: ["tok_test_visa_4242"] }) }
    # cleanup
    Conekta::api_key = api_key
  end
end
