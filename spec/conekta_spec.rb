require 'spec_helper'

describe Conekta do
  describe ".config" do
    it "sets the api key initializer style" do
      Conekta.config { |c| c.api_key = "abc" }

      expect(Conekta.api_key).to eq("abc")
    end

    it "sets the api version initializer style" do
      Conekta.config { |c| c.api_version = "1.0" }

      expect(Conekta.api_version).to eq("1.0")
    end

    it "sets the api locale initializer style" do
      Conekta.config { |c| c.locale = "es" }

      expect(Conekta.locale).to eq("es")
    end

    it "sets the plugin initializer style" do
      Conekta.config { |c| c.plugin = "spree" }

      expect(Conekta.plugin).to eq("spree")
    end
  end
end
