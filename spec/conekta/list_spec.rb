require 'spec_helper'

describe Conekta::List do

  include_context "API 1.1.0"

  let(:list) do
    Conekta::Order.where
  end

  context "moving cursor" do
    it "moves cursor forward" do
      first_window = Conekta::Order.where({"limit" => 10})
      first_window.next(limit: 1)
      id = first_window.first.id
      expect(id).to eq(list[10].id)
    end

    it "moves cursor backwards" do
      last_window = Conekta::Order.where({"limit" => 10, "next" => list[9].id})
      last_window.previous(limit: 1)
      id = last_window.first.id
      expect(id).to eq(list[9].id)
    end
  end

  context "testing has more" do
    it "cannot move backwards" do
      first_window = Conekta::Order.where({"limit" => 10})
      first_window.previous(limit: 1)
      expect(first_window).to be_empty
    end
    # this spec is only a reference to be tested in the future
    xit "cannot move forward" do
      expect(list).not_to be_empty
      loop do
        list.next
        break if list.size == 0
      end
      expect(list).to be_empty
      list.next
      expect(list).to be_empty
    end
  end
end
