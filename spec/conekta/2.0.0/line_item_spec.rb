require 'spec_helper'

describe Conekta::LineItem do
  include_context "API 2.0.0"

  let(:line_items) do
    [{
       name: "Box of Cohiba S1s",
       description: "Imported From Mex.",
       unit_price: 35000,
       quantity: 1,
       tags: ["food", "mexican food"]
     },
     {
       name: "Other item",
       description: "other description",
       unit_price: 35000,
       quantity: 1,
       tags: ["food"]
     }]
  end
  let(:order_data) do
    {
      currency:   'mxn',
      line_items: line_items
    }
  end
  let(:order)     { Conekta::Order.create(order_data) }
  let(:line_item) { order.line_items.first }

  context "deleting line items" do
    it "successful line item delete" do
      line_item.delete

      expect(line_item.deleted).to eq(true)
    end
  end

  context "updating line items" do
    it "successful line item update" do
      line_item.update(unit_price: 1000)

      expect(line_item.unit_price).to eq(1000)
    end

    it "unsuccessful line item update" do
      expect {
        line_item.update(description: nil)
      }.to raise_error(Conekta::ParameterValidationError)
    end
  end

end
