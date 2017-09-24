require 'spec_helper'

describe Conekta::ShippingContact do
  include_context "API 2.0.0"
  include_context "customer"

  let(:shipping_contacts) do
    [{
       receiver: "John Williams",
       phone: "+5213353319758",
       address: {
         street1: "250 Alexis St",
         city: "Red Deer",
         state: "Alberta",
         country: "CA",
         postal_code: "T4N 0B8",
       }
     },
     {
       receiver: "John Williams",
       phone: "+5213353319758",
       address: {
         street1: "250 Alexis St",
         city: "Red Deer",
         state: "Alberta",
         country: "CA",
         postal_code: "T4N 0B8",
       }
     }]
  end

  let(:customer) do
    Conekta::Customer.create(customer_data.
                               merge(shipping_contacts: shipping_contacts))
  end

 let(:shipping_contact) { customer.shipping_contacts.first }

  context "deleting shipping contacts" do
    it "successful shipping contact delete" do
      shipping_contact.delete

      expect(shipping_contact.deleted).to eq(true)
    end
  end

  context "updating shipping contacts" do
    it "successful shipping contact update" do
      shipping_contact.update(receiver: "Mario Moreno")

      expect(shipping_contact.receiver).to eq("Mario Moreno")
    end

    it "unsuccessful shipping contact update" do
      expect {
        shipping_contact.update(receiver: 123)
      }.to raise_error(Conekta::Error)
    end
  end
end
