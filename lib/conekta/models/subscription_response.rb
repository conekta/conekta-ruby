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
  # subscription model
  class SubscriptionResponse
    attr_accessor :billing_cycle_start

    attr_accessor :billing_cycle_end

    attr_accessor :canceled_at

    # Reason for cancellation. This field appears when the subscription status is 'canceled'.
    attr_accessor :canceled_reason

    attr_accessor :card_id

    attr_accessor :charge_id

    attr_accessor :created_at

    attr_accessor :customer_custom_reference

    attr_accessor :customer_id

    attr_accessor :id

    attr_accessor :last_billing_cycle_order_id

    attr_accessor :object

    attr_accessor :paused_at

    attr_accessor :plan_id

    attr_accessor :status

    attr_accessor :subscription_start

    attr_accessor :trial_start

    attr_accessor :trial_end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'billing_cycle_start' => :'billing_cycle_start',
        :'billing_cycle_end' => :'billing_cycle_end',
        :'canceled_at' => :'canceled_at',
        :'canceled_reason' => :'canceled_reason',
        :'card_id' => :'card_id',
        :'charge_id' => :'charge_id',
        :'created_at' => :'created_at',
        :'customer_custom_reference' => :'customer_custom_reference',
        :'customer_id' => :'customer_id',
        :'id' => :'id',
        :'last_billing_cycle_order_id' => :'last_billing_cycle_order_id',
        :'object' => :'object',
        :'paused_at' => :'paused_at',
        :'plan_id' => :'plan_id',
        :'status' => :'status',
        :'subscription_start' => :'subscription_start',
        :'trial_start' => :'trial_start',
        :'trial_end' => :'trial_end'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'billing_cycle_start' => :'Integer',
        :'billing_cycle_end' => :'Integer',
        :'canceled_at' => :'Integer',
        :'canceled_reason' => :'String',
        :'card_id' => :'String',
        :'charge_id' => :'String',
        :'created_at' => :'Integer',
        :'customer_custom_reference' => :'String',
        :'customer_id' => :'String',
        :'id' => :'String',
        :'last_billing_cycle_order_id' => :'String',
        :'object' => :'String',
        :'paused_at' => :'Integer',
        :'plan_id' => :'String',
        :'status' => :'String',
        :'subscription_start' => :'Integer',
        :'trial_start' => :'Integer',
        :'trial_end' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'billing_cycle_start',
        :'billing_cycle_end',
        :'canceled_at',
        :'charge_id',
        :'paused_at',
        :'trial_start',
        :'trial_end'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Conekta::SubscriptionResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Conekta::SubscriptionResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'billing_cycle_start')
        self.billing_cycle_start = attributes[:'billing_cycle_start']
      end

      if attributes.key?(:'billing_cycle_end')
        self.billing_cycle_end = attributes[:'billing_cycle_end']
      end

      if attributes.key?(:'canceled_at')
        self.canceled_at = attributes[:'canceled_at']
      end

      if attributes.key?(:'canceled_reason')
        self.canceled_reason = attributes[:'canceled_reason']
      end

      if attributes.key?(:'card_id')
        self.card_id = attributes[:'card_id']
      end

      if attributes.key?(:'charge_id')
        self.charge_id = attributes[:'charge_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'customer_custom_reference')
        self.customer_custom_reference = attributes[:'customer_custom_reference']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'last_billing_cycle_order_id')
        self.last_billing_cycle_order_id = attributes[:'last_billing_cycle_order_id']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.key?(:'paused_at')
        self.paused_at = attributes[:'paused_at']
      end

      if attributes.key?(:'plan_id')
        self.plan_id = attributes[:'plan_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'subscription_start')
        self.subscription_start = attributes[:'subscription_start']
      end

      if attributes.key?(:'trial_start')
        self.trial_start = attributes[:'trial_start']
      end

      if attributes.key?(:'trial_end')
        self.trial_end = attributes[:'trial_end']
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
          billing_cycle_start == o.billing_cycle_start &&
          billing_cycle_end == o.billing_cycle_end &&
          canceled_at == o.canceled_at &&
          canceled_reason == o.canceled_reason &&
          card_id == o.card_id &&
          charge_id == o.charge_id &&
          created_at == o.created_at &&
          customer_custom_reference == o.customer_custom_reference &&
          customer_id == o.customer_id &&
          id == o.id &&
          last_billing_cycle_order_id == o.last_billing_cycle_order_id &&
          object == o.object &&
          paused_at == o.paused_at &&
          plan_id == o.plan_id &&
          status == o.status &&
          subscription_start == o.subscription_start &&
          trial_start == o.trial_start &&
          trial_end == o.trial_end
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [billing_cycle_start, billing_cycle_end, canceled_at, canceled_reason, card_id, charge_id, created_at, customer_custom_reference, customer_id, id, last_billing_cycle_order_id, object, paused_at, plan_id, status, subscription_start, trial_start, trial_end].hash
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
