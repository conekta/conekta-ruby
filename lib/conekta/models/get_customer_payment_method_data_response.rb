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
  module GetCustomerPaymentMethodDataResponse
    class << self
      # List of class defined in oneOf (OpenAPI v3)
      def openapi_one_of
        [
          :'PaymentMethodCardResponse',
          :'PaymentMethodCashResponse',
          :'PaymentMethodSpeiRecurrent'
        ]
      end

      # Discriminator's property name (OpenAPI v3)
      def openapi_discriminator_name
        :'type'
      end

      # Discriminator's mapping (OpenAPI v3)
      def openapi_discriminator_mapping
        {
          :'card' => :'PaymentMethodCardResponse',
          :'cash' => :'PaymentMethodCashResponse',
          :'cash_recurrent' => :'PaymentMethodCashResponse',
          :'oxxo_recurrent' => :'PaymentMethodCashResponse',
          :'spei_recurrent' => :'PaymentMethodSpeiRecurrent'
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
