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
  class ChargeOrderResponse
    attr_accessor :amount

    attr_accessor :channel

    attr_accessor :created_at

    attr_accessor :currency

    attr_accessor :customer_id

    attr_accessor :description

    attr_accessor :device_fingerprint

    attr_accessor :failure_code

    attr_accessor :failure_message

    attr_accessor :id

    attr_accessor :livemode

    attr_accessor :monthly_installments

    attr_accessor :object

    attr_accessor :order_id

    attr_accessor :paid_at

    attr_accessor :payment_method

    # Reference ID of the charge
    attr_accessor :reference_id

    attr_accessor :refunds

    attr_accessor :status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'channel' => :'channel',
        :'created_at' => :'created_at',
        :'currency' => :'currency',
        :'customer_id' => :'customer_id',
        :'description' => :'description',
        :'device_fingerprint' => :'device_fingerprint',
        :'failure_code' => :'failure_code',
        :'failure_message' => :'failure_message',
        :'id' => :'id',
        :'livemode' => :'livemode',
        :'monthly_installments' => :'monthly_installments',
        :'object' => :'object',
        :'order_id' => :'order_id',
        :'paid_at' => :'paid_at',
        :'payment_method' => :'payment_method',
        :'reference_id' => :'reference_id',
        :'refunds' => :'refunds',
        :'status' => :'status'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amount' => :'Integer',
        :'channel' => :'ChargeResponseChannel',
        :'created_at' => :'Integer',
        :'currency' => :'String',
        :'customer_id' => :'String',
        :'description' => :'String',
        :'device_fingerprint' => :'String',
        :'failure_code' => :'String',
        :'failure_message' => :'String',
        :'id' => :'String',
        :'livemode' => :'Boolean',
        :'monthly_installments' => :'Integer',
        :'object' => :'String',
        :'order_id' => :'String',
        :'paid_at' => :'Integer',
        :'payment_method' => :'ChargeOrderResponsePaymentMethod',
        :'reference_id' => :'String',
        :'refunds' => :'Array<Object>',
        :'status' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'device_fingerprint',
        :'monthly_installments',
        :'paid_at',
        :'reference_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Conekta::ChargeOrderResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Conekta::ChargeOrderResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'channel')
        self.channel = attributes[:'channel']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'device_fingerprint')
        self.device_fingerprint = attributes[:'device_fingerprint']
      end

      if attributes.key?(:'failure_code')
        self.failure_code = attributes[:'failure_code']
      end

      if attributes.key?(:'failure_message')
        self.failure_message = attributes[:'failure_message']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'livemode')
        self.livemode = attributes[:'livemode']
      end

      if attributes.key?(:'monthly_installments')
        self.monthly_installments = attributes[:'monthly_installments']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.key?(:'paid_at')
        self.paid_at = attributes[:'paid_at']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'refunds')
        if (value = attributes[:'refunds']).is_a?(Array)
          self.refunds = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          channel == o.channel &&
          created_at == o.created_at &&
          currency == o.currency &&
          customer_id == o.customer_id &&
          description == o.description &&
          device_fingerprint == o.device_fingerprint &&
          failure_code == o.failure_code &&
          failure_message == o.failure_message &&
          id == o.id &&
          livemode == o.livemode &&
          monthly_installments == o.monthly_installments &&
          object == o.object &&
          order_id == o.order_id &&
          paid_at == o.paid_at &&
          payment_method == o.payment_method &&
          reference_id == o.reference_id &&
          refunds == o.refunds &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, channel, created_at, currency, customer_id, description, device_fingerprint, failure_code, failure_message, id, livemode, monthly_installments, object, order_id, paid_at, payment_method, reference_id, refunds, status].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Conekta.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
