require 'spec_helper'

describe Conekta::Customer do
  include_context "API 2.0.0"
  context "updating customers" do
    context "creating submodels" do
      include_context "customer"

      let(:customer) { Conekta::Customer.create(customer_data) }

      let(:source_params) do
        {
          type:     "card",
          token_id: "tok_test_visa_4242"
        }
      end

      let(:shipping_contact_params) do
        {
          email: "rogue@xmen.org",
          phone: "+5213353319758",
          receiver: "Test Conekta",
          address: {
            street1: "250 Alexis St",
            city: "Red Deer",
            state: "Alberta",
            country: "CA",
            postal_code: "T4N 0B8",
          }
        }
      end

      it "successfully creates source for customer" do
        source = customer.create_payment_source(source_params)

        expect(source.class.to_s).to eq("Conekta::PaymentSource")
        expect(customer.payment_sources.class.to_s).to eq("Conekta::List")
      end

      it "successfully creates shipping contact for customer" do
        shipping_contact =
          customer.create_shipping_contact(shipping_contact_params)

        expect(shipping_contact.class.to_s).to eq("Conekta::ShippingContact")
        expect(customer.shipping_contacts.class.to_s).to eq("Conekta::List")
      end
    end
  end
end