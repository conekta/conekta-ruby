require 'spec_helper'

describe Conekta::Customer do
  include_context "API 2.0.0"
  context "updating customers" do
    context "creating submodels" do
      include_context "customer"

      let(:customer) { Conekta::Customer.create(customer_data) }

      let(:customer_oxxo) do
        {
          payment_sources: [{
            type: 'oxxo_recurrent',
            expires_at: 157_559_040_0
          }],
          email: 'test@gmail.com',
          name: 'Mario'
        }
      end

      let(:customer_with_reference) do
        {
          payment_sources: [{
            type: 'oxxo_recurrent',
            reference: '5512345678',
            expires_at: 157_559_040_0
          }],
          email: 'rick.sanchez@conekta.com',
          name: 'Rick Sánchez'
        }
      end

      let(:oxxo_source_params) do
        {
          type: 'oxxo_recurrent',
          expires_at: 157_559_040_0
        }
      end

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
        customer = Conekta::Customer.create(customer_oxxo)
        source = customer.payment_sources.first

        expect(source.class.to_s).to eq('Conekta::PaymentSource')
        expect(customer.payment_sources.class.to_s).to eq('Conekta::List')
        expect(source.reference.size).to eq(14)
      end

      it 'successfully creates oxxo recurrent reference for customer' do
        source = customer.create_offline_recurrent_reference(oxxo_source_params)

        expect(source.class.to_s).to eq("Conekta::PaymentSource")
        expect(customer.payment_sources.class.to_s).to eq("Conekta::List")
        expect(source.reference.size).to eq(14)
      end

      it "successfully creates shipping contact for customer" do
        shipping_contact =
          customer.create_shipping_contact(shipping_contact_params)

        expect(shipping_contact.class.to_s).to eq("Conekta::ShippingContact")
        expect(customer.shipping_contacts.class.to_s).to eq("Conekta::List")
      end

      it 'successfully sets the reference for customer from the merchant request' do
        skip
        customer = Conekta::Customer.create(customer_with_reference)
        source = customer.payment_sources.first

        expect(source.reference).to eq('5512345678')
        expect(source.reference.size).to eq(10)
      end
    end
  end
end
