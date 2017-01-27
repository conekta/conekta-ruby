require 'spec_helper'

describe Conekta::FiscalEntity do
  include_context "API 2.0.0"
  include_context "customer"

  let(:fiscal_entities) do
    [{
       tax_id: "AMGH851205MN1",
       name: "Nike SA de CV",
       address: {
         street1: "250 Alexis St",
         internal_number: "19",
         external_number: "91",
         city: "Red Deer",
         state: "Alberta",
         country: "CA",
         postal_code: "T4N 0B8"
       }
     },
     {
       tax_id: "AMGH851205MN2",
       name: "Nike SA de CV",
       address: {
         street1: "250 Alexis St",
         internal_number: "20",
         external_number: "02",
         city: "Red Deer",
         state: "Alberta",
         country: "CA",
         postal_code: "T4N 0B8"
       }
     }]
  end

  let(:customer) do
    Conekta::Customer.create(customer_data.
                               merge(fiscal_entities: fiscal_entities))
  end
  let(:fiscal_entity) { customer.fiscal_entities.first }

  context "deleting fiscal entities" do
    it "successful fiscal entity delete" do
      begin
        fiscal_entity.delete
      rescue Conekta::ErrorList => list
        puts list.details.map{|d|d.message}.inspect
      end

      expect(fiscal_entity.deleted).to eq(true)
    end
  end

  context "updating fiscal entities" do
    it "successful fiscal entity update" do
      fiscal_entity.update(name: "Adidas")

      expect(fiscal_entity.name).to eq("Adidas")
    end

    it "unsuccessful fiscal entity update" do
      expect {
        fiscal_entity.update(tax_id: nil)
      }.to raise_error(Conekta::ErrorList)
    end
  end
end
