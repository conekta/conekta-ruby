require 'spec_helper'

describe Conekta::List do

  before(:all) do
    Conekta.api_base = "http://0.0.0.0:3000"
    Conekta.api_version = "1.1.0"
    Conekta.api_key = "PZAHFXPDb53b3a3d6ab9"
  end

  after(:all) do
    Conekta.api_base = "https://api.conekta.io"
    Conekta.api_version = "1.0.0"
    Conekta.api_key = "1tv5yJp3xnVZ7eK67m4h"
  end

  let(:list) do
    Conekta::Order.where
  end

  context "moving cursor" do
    it "moves cursor forward" do
      first_window = Conekta::Order.where({"limit" => 10})
      first_window.next(1)
      id = first_window.first.id
      expect(id).to eq(list[10].id)
    end
    it "moves cursor backwards" do
      last_window = Conekta::Order.where({"limit" => 10, "starting_after" => list[9].id})
      last_window.previous(1)
      id = last_window.first.id
      expect(id).to eq(list[9].id)
    end
  end

  context "testing has more" do
    it "cannot move backwards" do
      first_window = Conekta::Order.where({"limit" => 10})
      first_window.previous(1)
      expect(first_window).to be_empty
    end
    it "cannot move forward"
  end
end
