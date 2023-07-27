=begin
#Conekta API

#Conekta sdk

The version of the OpenAPI document: 2.1.0
Contact: engineering@conekta.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module Conekta
  # [Checkout](https://developers.conekta.com/v2.1.0/reference/payment-link) details 
  class CheckoutRequest
    # Are the payment methods available for this link
    attr_accessor :allowed_payment_methods

    # Unix timestamp of checkout expiration
    attr_accessor :expires_at

    # Redirection url back to the site in case of failed payment, applies only to HostedPayment.
    attr_accessor :failure_url

    attr_accessor :monthly_installments_enabled

    attr_accessor :monthly_installments_options

    # Reason for payment
    attr_accessor :name

    attr_accessor :on_demand_enabled

    # Redirection url back to the site in case of successful payment, applies only to HostedPayment
    attr_accessor :success_url

    # This field represents the type of checkout
    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allowed_payment_methods' => :'allowed_payment_methods',
        :'expires_at' => :'expires_at',
        :'failure_url' => :'failure_url',
        :'monthly_installments_enabled' => :'monthly_installments_enabled',
        :'monthly_installments_options' => :'monthly_installments_options',
        :'name' => :'name',
        :'on_demand_enabled' => :'on_demand_enabled',
        :'success_url' => :'success_url',
        :'type' => :'type'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'allowed_payment_methods' => :'Array<String>',
        :'expires_at' => :'Integer',
        :'failure_url' => :'String',
        :'monthly_installments_enabled' => :'Boolean',
        :'monthly_installments_options' => :'Array<Integer>',
        :'name' => :'String',
        :'on_demand_enabled' => :'Boolean',
        :'success_url' => :'String',
        :'type' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Conekta::CheckoutRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Conekta::CheckoutRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'allowed_payment_methods')
        if (value = attributes[:'allowed_payment_methods']).is_a?(Array)
          self.allowed_payment_methods = value
        end
      end

      if attributes.key?(:'expires_at')
        self.expires_at = attributes[:'expires_at']
      end

      if attributes.key?(:'failure_url')
        self.failure_url = attributes[:'failure_url']
      end

      if attributes.key?(:'monthly_installments_enabled')
        self.monthly_installments_enabled = attributes[:'monthly_installments_enabled']
      end

      if attributes.key?(:'monthly_installments_options')
        if (value = attributes[:'monthly_installments_options']).is_a?(Array)
          self.monthly_installments_options = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'on_demand_enabled')
        self.on_demand_enabled = attributes[:'on_demand_enabled']
      end

      if attributes.key?(:'success_url')
        self.success_url = attributes[:'success_url']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @allowed_payment_methods.nil?
        invalid_properties.push('invalid value for "allowed_payment_methods", allowed_payment_methods cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @allowed_payment_methods.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allowed_payment_methods == o.allowed_payment_methods &&
          expires_at == o.expires_at &&
          failure_url == o.failure_url &&
          monthly_installments_enabled == o.monthly_installments_enabled &&
          monthly_installments_options == o.monthly_installments_options &&
          name == o.name &&
          on_demand_enabled == o.on_demand_enabled &&
          success_url == o.success_url &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [allowed_payment_methods, expires_at, failure_url, monthly_installments_enabled, monthly_installments_options, name, on_demand_enabled, success_url, type].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
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
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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