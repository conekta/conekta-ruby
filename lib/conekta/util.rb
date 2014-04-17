require 'active_support/inflector'
module Conekta
  module Util
    def self.types
      @types ||= {
        'webhook_log' => WebhookLog,
        'bank_transfer_payout_method' => Method,
        'payout' => Payout,
        'payee' => Payee,
        'payout_method' => PayoutMethod,
        'bank_transfer_payment' => PaymentMethod,
        'card_payment' => PaymentMethod,
        'cash_payment' => PaymentMethod,
        'charge' => Charge,
        'customer' => Customer,
        'card' => Card,
        'subscription' => Subscription,
        'plan' => Plan,
        'token' => Token,
        'event' => Event
      }
    end
    def self.convert_to_conekta_object(name,resp)
      if resp.kind_of?(Hash) 
        if resp.has_key?('object') and types[resp['object']]
          instance = types[resp['object']].new()
          instance.load_from(resp)
          return instance
        elsif name.instance_of? String
          name = "event_data" if name.camelize == "Data"
          name = "obj" if name.camelize == "Object"
          if !Object.const_defined?(name.camelize)
            instance = Object.const_set(name.camelize, Class.new(ConektaObject)).new
          else
            instance = name.camelize.constantize.new
          end
          instance.load_from(resp)
          return instance
        end
      end
      if resp.kind_of?(Array)
        instance = ConektaObject.new
        instance.load_from(resp)
        if !resp.empty? and resp.first.instance_of? Hash and !resp.first["object"]
          resp.each_with_index do |r, i|
            obj = convert_to_conekta_object(name,r)
            instance.set_val(i,obj)
            instance[i] = obj
          end
        end
        return instance
      end
      return instance
    end
  end
end
