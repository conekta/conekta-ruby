require 'spec_helper'

describe Conekta::Error do
  include_context "API 1.0.0"
  let(:card) { { cards: ["tok_test_visa_4242"] } }

  it "test no id error" do
    expect { Conekta::Charge.find(nil) }.to raise_error(
      Conekta::Error, "Could not get the id of Charge instance."
    )
  end

  it "test no connection error" do
    api_url = Conekta::api_base
    Conekta::api_base = 'http://localhost:3001'

    expect { Conekta::Customer.create(card) }.to raise_error(
      Conekta::NoConnectionError, "Could not connect to http://localhost:3001."
    )

    # cleanup
    Conekta::api_base = api_url
  end

  it "test api error" do
    expect { Conekta::Customer.create({ cards: {0=>"tok_test_visa_4242"} }) }.to \
      raise_error(Conekta::ParameterValidationError)
  end

  it "test authentication error" do
    api_key = Conekta::api_key
    Conekta::api_key = ""
    expect { Conekta::Customer.create({ cards: ["tok_test_visa_4242"] }) }.to \
      raise_error(Conekta::AuthenticationError)

    # cleanup
    Conekta.api_key = api_key
  end

  it "test parameter validation error" do
    expect { Conekta::Plan.create({id: 'gold-plan'}) }.to raise_error(
      Conekta::ParameterValidationError
    )
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
    expect { Conekta::Charge.find(1) }.to raise_error(
      Conekta::ResourceNotFoundError
    )
  end
end
