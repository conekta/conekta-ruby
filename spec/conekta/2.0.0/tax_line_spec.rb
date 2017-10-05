require 'spec_helper'

describe Conekta::TaxLine do
  include_context "API 2.0.0"
  include_context "order"

  let(:tax_lines) do
    [
      {
        description: "IVA",
        amount:      600
      },
      {
        description: "ISR",
        amount:      100
      }
    ]
  end

  let(:order)    { Conekta::Order.create(order_data.merge(tax_lines: tax_lines)) }
  let(:tax_line) { order.tax_lines.first }

  context "deleting tax lines" do
    it "successful tax line delete" do
      tax_line.delete

      expect(tax_line.deleted).to eq(true)
    end
  end

  context "updating tax lines" do
    it "successful tax line update" do
      tax_line.update(amount: 50)

      expect(tax_line.amount).to eq(50)
    end

    it "unsuccessful tax line update" do
      expect {
        tax_line.update(amount: -1)
      }.to raise_error(Conekta::Error)
    end
  end
end
