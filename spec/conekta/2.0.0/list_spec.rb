require 'spec_helper'

describe Conekta::List do

  include_context "API 2.0.0"

  let(:list) do
    response = JSON.parse(File.read("spec/support/fixtures/orders.json"))
    order_list = Conekta::List.new("Order",response)
    order_list.load_from(response)
    order_list
  end

  context "moving cursor" do
    it "moves cursor forward" do
      window = Conekta::Order.where({"limit" => 5, "next" => list[9].id})
      expect(window.first.id).to eq(list[10].id)
      window.next(limit: 1)
      expect(window.first.id).to eq(list[15].id)
    end

    it "moves cursor backwards" do
      window = Conekta::Order.where({"limit" => 5, "next" => list[14].id})
      expect(window.first.id).to eq(list[15].id)
      window.previous(limit: 1)
      expect(window.first.id).to eq(list[14].id)
    end
  end
end
