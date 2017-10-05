require 'spec_helper'

describe Conekta::DiscountLine do
  include_context "API 2.0.0"
  include_context "order"

  let(:discount_lines) do
    [
      {
        code: "Cupon de descuento",
        type:        "loyalty",
        amount:      10
      },
      {
        code: "Cupon de descuento",
        type:        "loyalty",
        amount:      5
      }
    ]
  end

  let(:order) do
    Conekta::Order.create(order_data.merge(discount_lines: discount_lines))
  end

  let(:discount_line) { order.discount_lines.first }

  context "deleting discount lines" do
    it "successful discount line delete" do
      discount_line.delete

      expect(discount_line.deleted).to eq(true)
    end
  end

  context "updating discount lines" do
    it "successful discount line update" do
      discount_line.update(amount: 11)

      expect(discount_line.amount).to eq(11)
    end

    it "unsuccessful discount line update" do
      expect {
        discount_line.update(amount: -1)
      }.to raise_error(Conekta::ParameterValidationError)
    end
  end
end
