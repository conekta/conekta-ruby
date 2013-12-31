require "active_support"
module Conekta
  module Util
    def self.types
      @types ||= {
        'card_payment' => PaymentMethod,
        'charge' => Charge
      }
    end
    def self.convert_to_conekta_object(resp)
      if resp.instance_of?(Hash) and resp.has_key?('object') and types[resp['object']]
        instance = types[resp['object']].new()
        instance.load_from(resp)
        return instance
      end
      if resp.respond_to? :each
        instance = ConektaObject.new
        instance.load_from(resp)
        return instance
      end
      return instance
    end
  end
end
