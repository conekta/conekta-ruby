module Conekta
  module Util

    def self.types
      @types ||= {
        'customer_info' => ::Conekta::CustomerInfo,
        'details' => ::Conekta::Details,
        'bank_transfer_payment' => ::Conekta::PaymentMethod,
        'bank_transfer_payout_method' => ::Conekta::Method,
        'card' => ::Conekta::Card,
        'card_payment' => ::Conekta::PaymentMethod,
        'cash_payment' => ::Conekta::PaymentMethod,
        'charge' => ::Conekta::Charge,
        'customer' => ::Conekta::Customer,
        'event' => ::Conekta::Event,
        'log' => ::Conekta::Log,
        'payee' => ::Conekta::Payee,
        'payout' => ::Conekta::Payout,
        'payout_method' => ::Conekta::PayoutMethod,
        'destination' => ::Conekta::Destination,
        'plan' => ::Conekta::Plan,
        'subscription' => ::Conekta::Subscription,
        'token' => ::Conekta::Token,
        'webhook' => ::Conekta::Webhook,
        'webhook_log' => ::Conekta::WebhookLog,
        'refund' => ::Conekta::Refund,
        'line_item' => ::Conekta::LineItem,
        'address' => ::Conekta::Address,
        'billing_address' => ::Conekta::Address,
        'shipping_address' => ::Conekta::Address,
        'order' => ::Conekta::Order,
        'payment_source' => ::Conekta::PaymentSource,
        'tax_line' => ::Conekta::TaxLine,
        'shipping_line' => ::Conekta::ShippingLine,
        'discount_line' => ::Conekta::DiscountLine,
        'shipping_contact' => ::Conekta::ShippingContact,
        'transfer' => ::Conekta::Transfer,
        'list' => ::Conekta::List
      }
    end

    def self.convert_to_conekta_object(name,resp)
      # these json strings should not be parsed into objects
      return resp if ["data", "request_body", "request_headers", "response_headers", "response_body", "query_string", "metadata", "antifraud_info"].include?(name)
      if resp.kind_of?(Hash)
        if resp.has_key?('object') and types[resp['object']]
          if resp['object'] == "list"
            instance = types[resp['object']].new(name, resp)
          else
            instance = types[resp['object']].new()
          end

          instance.load_from(resp)

          return instance
        elsif name.instance_of? String
          name = "shippin_line_method" if name == "method"
          name = "event_data" if camelize(name) == "Data"
          name = "obj" if camelize(name) == "Object"
          if !Object.const_defined?(camelize(name))
            instance = Object.const_set(camelize(name), Class.new(ConektaObject)).new
          else
            begin
              instance = constantize("Conekta::"+camelize(name)).new
            rescue # Class is not defined
              instance = constantize(camelize(name)).new
            end
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

    def self.underscore(str)
      str.split(/::/).last.
        gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
        gsub(/([a-z\d])([A-Z])/,'\1_\2').
        tr("-", "_").
        downcase
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
