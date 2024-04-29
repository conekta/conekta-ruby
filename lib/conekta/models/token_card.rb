=begin
#Conekta API

#Conekta sdk

The version of the OpenAPI document: 2.1.0
Contact: engineering@conekta.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module Conekta
  class TokenCard
    # It is a value that allows identifying the security code of the card.
    attr_accessor :cvc

    # It is a value that allows identifying the device fingerprint.
    attr_accessor :device_fingerprint

    # It is a value that allows identifying the expiration month of the card.
    attr_accessor :exp_month

    # It is a value that allows identifying the expiration year of the card.
    attr_accessor :exp_year

    # It is a value that allows identifying the name of the cardholder.
    attr_accessor :name

    # It is a value that allows identifying the number of the card.
    attr_accessor :number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cvc' => :'cvc',
        :'device_fingerprint' => :'device_fingerprint',
        :'exp_month' => :'exp_month',
        :'exp_year' => :'exp_year',
        :'name' => :'name',
        :'number' => :'number'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cvc' => :'String',
        :'device_fingerprint' => :'String',
        :'exp_month' => :'String',
        :'exp_year' => :'String',
        :'name' => :'String',
        :'number' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Conekta::TokenCard` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Conekta::TokenCard`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cvc')
        self.cvc = attributes[:'cvc']
      else
        self.cvc = nil
      end

      if attributes.key?(:'device_fingerprint')
        self.device_fingerprint = attributes[:'device_fingerprint']
      end

      if attributes.key?(:'exp_month')
        self.exp_month = attributes[:'exp_month']
      else
        self.exp_month = nil
      end

      if attributes.key?(:'exp_year')
        self.exp_year = attributes[:'exp_year']
      else
        self.exp_year = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      else
        self.number = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @cvc.nil?
        invalid_properties.push('invalid value for "cvc", cvc cannot be nil.')
      end

      if @cvc.to_s.length > 4
        invalid_properties.push('invalid value for "cvc", the character length must be smaller than or equal to 4.')
      end

      if @exp_month.nil?
        invalid_properties.push('invalid value for "exp_month", exp_month cannot be nil.')
      end

      if @exp_month.to_s.length > 2
        invalid_properties.push('invalid value for "exp_month", the character length must be smaller than or equal to 2.')
      end

      if @exp_year.nil?
        invalid_properties.push('invalid value for "exp_year", exp_year cannot be nil.')
      end

      if @exp_year.to_s.length > 2
        invalid_properties.push('invalid value for "exp_year", the character length must be smaller than or equal to 2.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @number.nil?
        invalid_properties.push('invalid value for "number", number cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @cvc.nil?
      return false if @cvc.to_s.length > 4
      return false if @exp_month.nil?
      return false if @exp_month.to_s.length > 2
      return false if @exp_year.nil?
      return false if @exp_year.to_s.length > 2
      return false if @name.nil?
      return false if @number.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] cvc Value to be assigned
    def cvc=(cvc)
      if cvc.nil?
        fail ArgumentError, 'cvc cannot be nil'
      end

      if cvc.to_s.length > 4
        fail ArgumentError, 'invalid value for "cvc", the character length must be smaller than or equal to 4.'
      end

      @cvc = cvc
    end

    # Custom attribute writer method with validation
    # @param [Object] exp_month Value to be assigned
    def exp_month=(exp_month)
      if exp_month.nil?
        fail ArgumentError, 'exp_month cannot be nil'
      end

      if exp_month.to_s.length > 2
        fail ArgumentError, 'invalid value for "exp_month", the character length must be smaller than or equal to 2.'
      end

      @exp_month = exp_month
    end

    # Custom attribute writer method with validation
    # @param [Object] exp_year Value to be assigned
    def exp_year=(exp_year)
      if exp_year.nil?
        fail ArgumentError, 'exp_year cannot be nil'
      end

      if exp_year.to_s.length > 2
        fail ArgumentError, 'invalid value for "exp_year", the character length must be smaller than or equal to 2.'
      end

      @exp_year = exp_year
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cvc == o.cvc &&
          device_fingerprint == o.device_fingerprint &&
          exp_month == o.exp_month &&
          exp_year == o.exp_year &&
          name == o.name &&
          number == o.number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [cvc, device_fingerprint, exp_month, exp_year, name, number].hash
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
