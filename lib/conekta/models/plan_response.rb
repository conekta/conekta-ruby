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
  # plans model
  class PlanResponse
    attr_accessor :amount

    attr_accessor :created_at

    attr_accessor :currency

    attr_accessor :expiry_count

    attr_accessor :frequency

    attr_accessor :id

    attr_accessor :interval

    attr_accessor :livemode

    attr_accessor :name

    attr_accessor :object

    attr_accessor :trial_period_days

    attr_accessor :max_retries

    attr_accessor :retry_delay_hours

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'created_at' => :'created_at',
        :'currency' => :'currency',
        :'expiry_count' => :'expiry_count',
        :'frequency' => :'frequency',
        :'id' => :'id',
        :'interval' => :'interval',
        :'livemode' => :'livemode',
        :'name' => :'name',
        :'object' => :'object',
        :'trial_period_days' => :'trial_period_days',
        :'max_retries' => :'max_retries',
        :'retry_delay_hours' => :'retry_delay_hours'
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
        :'created_at' => :'Integer',
        :'currency' => :'String',
        :'expiry_count' => :'Integer',
        :'frequency' => :'Integer',
        :'id' => :'String',
        :'interval' => :'String',
        :'livemode' => :'Boolean',
        :'name' => :'String',
        :'object' => :'String',
        :'trial_period_days' => :'Integer',
        :'max_retries' => :'Integer',
        :'retry_delay_hours' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'expiry_count',
        :'trial_period_days',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Conekta::PlanResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Conekta::PlanResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'expiry_count')
        self.expiry_count = attributes[:'expiry_count']
      end

      if attributes.key?(:'frequency')
        self.frequency = attributes[:'frequency']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'interval')
        self.interval = attributes[:'interval']
      end

      if attributes.key?(:'livemode')
        self.livemode = attributes[:'livemode']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.key?(:'trial_period_days')
        self.trial_period_days = attributes[:'trial_period_days']
      end

      if attributes.key?(:'max_retries')
        self.max_retries = attributes[:'max_retries']
      end

      if attributes.key?(:'retry_delay_hours')
        self.retry_delay_hours = attributes[:'retry_delay_hours']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@currency.nil? && @currency.to_s.length > 3
        invalid_properties.push('invalid value for "currency", the character length must be smaller than or equal to 3.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@currency.nil? && @currency.to_s.length > 3
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      if currency.nil?
        fail ArgumentError, 'currency cannot be nil'
      end

      if currency.to_s.length > 3
        fail ArgumentError, 'invalid value for "currency", the character length must be smaller than or equal to 3.'
      end

      @currency = currency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          created_at == o.created_at &&
          currency == o.currency &&
          expiry_count == o.expiry_count &&
          frequency == o.frequency &&
          id == o.id &&
          interval == o.interval &&
          livemode == o.livemode &&
          name == o.name &&
          object == o.object &&
          trial_period_days == o.trial_period_days &&
          max_retries == o.max_retries &&
          retry_delay_hours == o.retry_delay_hours
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, created_at, currency, expiry_count, frequency, id, interval, livemode, name, object, trial_period_days, max_retries, retry_delay_hours].hash
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
