=begin
#Conekta API

#Conekta sdk

The version of the OpenAPI document: 2.2.0
Contact: engineering@conekta.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module Conekta
  module ChargeResponsePaymentMethod
    class << self
      # List of class defined in oneOf (OpenAPI v3)
      def openapi_one_of
        [
          :'PaymentMethodBankTransfer',
          :'PaymentMethodBnplPayment',
          :'PaymentMethodCard',
          :'PaymentMethodCash'
        ]
      end

      # Discriminator's property name (OpenAPI v3)
      def openapi_discriminator_name
        :'object'
      end

      # Discriminator's mapping (OpenAPI v3)
      def openapi_discriminator_mapping
        {
          :'bank_transfer_payment' => :'PaymentMethodBankTransfer',
          :'bnpl_payment' => :'PaymentMethodBnplPayment',
          :'card_payment' => :'PaymentMethodCard',
          :'cash_payment' => :'PaymentMethodCash'
        }
      end

      # Builds the object
      # @param [Mixed] Data to be matched against the list of oneOf items
      # @return [Object] Returns the model or the data itself
      def build(data)
        discriminator_value = data[openapi_discriminator_name]
        return nil if discriminator_value.nil?

        klass = openapi_discriminator_mapping[discriminator_value.to_s.to_sym]
        return nil unless klass

        Conekta.const_get(klass).build_from_hash(data)
      end
    end
  end

end
