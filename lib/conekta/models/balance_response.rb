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
  # balance model
  class BalanceResponse
    # The balance's available
    attr_accessor :available

    # The balance's cashout retention amount
    attr_accessor :cashout_retention_amount

    # The balance's conekta retention
    attr_accessor :conekta_retention

    # The balance's gateway
    attr_accessor :gateway

    # The balance's pending
    attr_accessor :pending

    # The balance's retained
    attr_accessor :retained

    # The balance's retention amount
    attr_accessor :retention_amount

    # The balance's target collateral amount
    attr_accessor :target_collateral_amount

    # The balance's target retention amount
    attr_accessor :target_retention_amount

    # The balance's temporarily retained
    attr_accessor :temporarily_retained

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'available' => :'available',
        :'cashout_retention_amount' => :'cashout_retention_amount',
        :'conekta_retention' => :'conekta_retention',
        :'gateway' => :'gateway',
        :'pending' => :'pending',
        :'retained' => :'retained',
        :'retention_amount' => :'retention_amount',
        :'target_collateral_amount' => :'target_collateral_amount',
        :'target_retention_amount' => :'target_retention_amount',
        :'temporarily_retained' => :'temporarily_retained'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'available' => :'Array<BalanceCommonField>',
        :'cashout_retention_amount' => :'Array<BalanceCommonField>',
        :'conekta_retention' => :'Array<BalanceCommonField>',
        :'gateway' => :'Array<BalanceCommonField>',
        :'pending' => :'Array<BalanceCommonField>',
        :'retained' => :'Array<BalanceCommonField>',
        :'retention_amount' => :'Array<BalanceCommonField>',
        :'target_collateral_amount' => :'Object',
        :'target_retention_amount' => :'Array<BalanceCommonField>',
        :'temporarily_retained' => :'Array<BalanceCommonField>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Conekta::BalanceResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Conekta::BalanceResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'available')
        if (value = attributes[:'available']).is_a?(Array)
          self.available = value
        end
      end

      if attributes.key?(:'cashout_retention_amount')
        if (value = attributes[:'cashout_retention_amount']).is_a?(Array)
          self.cashout_retention_amount = value
        end
      end

      if attributes.key?(:'conekta_retention')
        if (value = attributes[:'conekta_retention']).is_a?(Array)
          self.conekta_retention = value
        end
      end

      if attributes.key?(:'gateway')
        if (value = attributes[:'gateway']).is_a?(Array)
          self.gateway = value
        end
      end

      if attributes.key?(:'pending')
        if (value = attributes[:'pending']).is_a?(Array)
          self.pending = value
        end
      end

      if attributes.key?(:'retained')
        if (value = attributes[:'retained']).is_a?(Array)
          self.retained = value
        end
      end

      if attributes.key?(:'retention_amount')
        if (value = attributes[:'retention_amount']).is_a?(Array)
          self.retention_amount = value
        end
      end

      if attributes.key?(:'target_collateral_amount')
        self.target_collateral_amount = attributes[:'target_collateral_amount']
      end

      if attributes.key?(:'target_retention_amount')
        if (value = attributes[:'target_retention_amount']).is_a?(Array)
          self.target_retention_amount = value
        end
      end

      if attributes.key?(:'temporarily_retained')
        if (value = attributes[:'temporarily_retained']).is_a?(Array)
          self.temporarily_retained = value
        end
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
          available == o.available &&
          cashout_retention_amount == o.cashout_retention_amount &&
          conekta_retention == o.conekta_retention &&
          gateway == o.gateway &&
          pending == o.pending &&
          retained == o.retained &&
          retention_amount == o.retention_amount &&
          target_collateral_amount == o.target_collateral_amount &&
          target_retention_amount == o.target_retention_amount &&
          temporarily_retained == o.temporarily_retained
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [available, cashout_retention_amount, conekta_retention, gateway, pending, retained, retention_amount, target_collateral_amount, target_retention_amount, temporarily_retained].hash
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
