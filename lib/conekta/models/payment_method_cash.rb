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
  class PaymentMethodCash
    attr_accessor :type

    attr_accessor :object

    # Agreement ID
    attr_accessor :agreement

    attr_accessor :auth_code

    attr_accessor :cashier_id

    attr_accessor :reference

    attr_accessor :barcode_url

    attr_accessor :expires_at

    # Product type, e.g. bbva_cash_in, cash_in, pespay_cash_in, etc.
    attr_accessor :product_type

    attr_accessor :service_name

    attr_accessor :store

    attr_accessor :store_name

    attr_accessor :customer_ip_address

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'object' => :'object',
        :'agreement' => :'agreement',
        :'auth_code' => :'auth_code',
        :'cashier_id' => :'cashier_id',
        :'reference' => :'reference',
        :'barcode_url' => :'barcode_url',
        :'expires_at' => :'expires_at',
        :'product_type' => :'product_type',
        :'service_name' => :'service_name',
        :'store' => :'store',
        :'store_name' => :'store_name',
        :'customer_ip_address' => :'customer_ip_address'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'object' => :'String',
        :'agreement' => :'String',
        :'auth_code' => :'Integer',
        :'cashier_id' => :'String',
        :'reference' => :'String',
        :'barcode_url' => :'String',
        :'expires_at' => :'Integer',
        :'product_type' => :'String',
        :'service_name' => :'String',
        :'store' => :'String',
        :'store_name' => :'String',
        :'customer_ip_address' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'auth_code',
        :'cashier_id',
        :'store',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'PaymentMethod'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Conekta::PaymentMethodCash` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Conekta::PaymentMethodCash`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = nil
      end

      if attributes.key?(:'agreement')
        self.agreement = attributes[:'agreement']
      end

      if attributes.key?(:'auth_code')
        self.auth_code = attributes[:'auth_code']
      end

      if attributes.key?(:'cashier_id')
        self.cashier_id = attributes[:'cashier_id']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'barcode_url')
        self.barcode_url = attributes[:'barcode_url']
      end

      if attributes.key?(:'expires_at')
        self.expires_at = attributes[:'expires_at']
      end

      if attributes.key?(:'product_type')
        self.product_type = attributes[:'product_type']
      end

      if attributes.key?(:'service_name')
        self.service_name = attributes[:'service_name']
      end

      if attributes.key?(:'store')
        self.store = attributes[:'store']
      end

      if attributes.key?(:'store_name')
        self.store_name = attributes[:'store_name']
      end

      if attributes.key?(:'customer_ip_address')
        self.customer_ip_address = attributes[:'customer_ip_address']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @object.nil?
        invalid_properties.push('invalid value for "object", object cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @object.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          object == o.object &&
          agreement == o.agreement &&
          auth_code == o.auth_code &&
          cashier_id == o.cashier_id &&
          reference == o.reference &&
          barcode_url == o.barcode_url &&
          expires_at == o.expires_at &&
          product_type == o.product_type &&
          service_name == o.service_name &&
          store == o.store &&
          store_name == o.store_name &&
          customer_ip_address == o.customer_ip_address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, object, agreement, auth_code, cashier_id, reference, barcode_url, expires_at, product_type, service_name, store, store_name, customer_ip_address].hash
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
