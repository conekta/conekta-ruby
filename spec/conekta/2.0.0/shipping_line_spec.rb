require 'spec_helper'

describe Conekta::ShippingLine do
  include_context "API 2.0.0"
  include_context "order"

  let(:shipping_lines) do
    [
      {
        description:     "Free Shipping",
        amount:          0,
        tracking_number: "TRACK123",
        carrier:         "USPS",
        method:          "Train",
      },
      {
        description:     "Otro Shipping",
        amount:          40,
        tracking_number: "TRACK124",
        carrier:         "USPS",
        method:          "Train",
      }
    ]
  end

  let(:order) do
    Conekta::Order.create(order_data.merge(shipping_lines: shipping_lines))
  end

  let(:shipping_line) { order.shipping_lines.first }

  context "deleting shipping lines" do
    it "successful shipping line delete" do
      shipping_line.delete

      expect(shipping_line.deleted).to eq(true)
    end
  end

  context "updating shipping lines" do
    it "successful shipping line update" do
      shipping_line.update(method: "Air")

      expect(shipping_line._method).to eq("Air")
    end

    it "unsuccessful shipping line update" do
      expect {
        shipping_line.update(amount: -1)
      }.to raise_error(Conekta::ParameterValidationError)
    end
  end
end
