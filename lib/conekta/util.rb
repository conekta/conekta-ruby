module Conekta
  module Util
    def self.types
      @types ||= {
        'bank_transfer_payment' => PaymentMethod,
        'bank_transfer_payout_method' => Method,
        'card' => Card,
        'card_payment' => PaymentMethod,
        'cash_payment' => PaymentMethod,
        'charge' => Charge,
        'customer' => Customer,
        'event' => Event,
        'log' => Log,
        'payee' => Payee,
        'payout' => Payout,
        'payout_method' => PayoutMethod,
        'plan' => Plan,
        'subscription' => Subscription,
        'token' => Token,
        'webhook' => Webhook,
        'webhook_log' => WebhookLog,
        'refund' => Refund,
        'line_item' => LineItem,
        'address' => Address
      }
    end
    def self.convert_to_conekta_object(name,resp)
      if resp.kind_of?(Hash) 
        if resp.has_key?('object') and types[resp['object']]
          instance = types[resp['object']].new()
          instance.load_from(resp)
          return instance
        elsif name.instance_of? String
          name = "event_data" if camelize(name) == "Data"
          name = "obj" if camelize(name) == "Object"
          if !Object.const_defined?(camelize(name))
            instance = Object.const_set(camelize(name), Class.new(ConektaObject)).new
          else
            instance = constantize(camelize(name)).new
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
    protected
    def self.camelize(str)
      str.split('_').map{|e| e.capitalize}.join
    end
    def self.constantize(camel_cased_word)
      names = camel_cased_word.split('::')

      # Trigger a builtin NameError exception including the ill-formed constant in the message.
      Object.const_get(camel_cased_word) if names.empty?

      # Remove the first blank element in case of '::ClassName' notation.
      names.shift if names.size > 1 && names.first.empty?

      names.inject(Object) do |constant, name|
        if constant == Object
          constant.const_get(name)
        else
          candidate = constant.const_get(name)
          next candidate if constant.const_defined?(name, false)
          next candidate unless Object.const_defined?(name)

          # Go down the ancestors to check it it's owned
          # directly before we reach Object or the end of ancestors.
          constant = constant.ancestors.inject do |const, ancestor|
            break const    if ancestor == Object
            break ancestor if ancestor.const_defined?(name, false)
            const
          end

          # owner is in Object, so raise
          constant.const_get(name, false)
        end
      end
    end
  end
end
