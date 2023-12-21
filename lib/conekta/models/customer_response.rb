=begin
#Conekta API

#Conekta sdk

The version of the OpenAPI document: 2.1.0
Contact: engineering@conekta.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0

=end

require 'date'
require 'time'

module Conekta
  # customer response
  class CustomerResponse
    attr_accessor :antifraud_info

    # true if the customer is a company
    attr_accessor :corporate

    # Creation date of the object
    attr_accessor :created_at

    # Custom reference
    attr_accessor :custom_reference

    attr_accessor :default_fiscal_entity_id

    attr_accessor :default_shipping_contact_id

    attr_accessor :default_payment_source_id

    attr_accessor :email

    attr_accessor :fiscal_entities

    # Customer's ID
    attr_accessor :id

    # true if the object exists in live mode or the value false if the object exists in test mode
    attr_accessor :livemode

    # Customer's name
    attr_accessor :name

    attr_accessor :metadata

    attr_accessor :object

    attr_accessor :payment_sources

    # Customer's phone number
    attr_accessor :phone

    attr_accessor :shipping_contacts

    attr_accessor :subscription

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'antifraud_info' => :'antifraud_info',
        :'corporate' => :'corporate',
        :'created_at' => :'created_at',
        :'custom_reference' => :'custom_reference',
        :'default_fiscal_entity_id' => :'default_fiscal_entity_id',
        :'default_shipping_contact_id' => :'default_shipping_contact_id',
        :'default_payment_source_id' => :'default_payment_source_id',
        :'email' => :'email',
        :'fiscal_entities' => :'fiscal_entities',
        :'id' => :'id',
        :'livemode' => :'livemode',
        :'name' => :'name',
        :'metadata' => :'metadata',
        :'object' => :'object',
        :'payment_sources' => :'payment_sources',
        :'phone' => :'phone',
        :'shipping_contacts' => :'shipping_contacts',
        :'subscription' => :'subscription'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'antifraud_info' => :'CustomerAntifraudInfoResponse',
        :'corporate' => :'Boolean',
        :'created_at' => :'Integer',
        :'custom_reference' => :'String',
        :'default_fiscal_entity_id' => :'String',
        :'default_shipping_contact_id' => :'String',
        :'default_payment_source_id' => :'String',
        :'email' => :'String',
        :'fiscal_entities' => :'CustomerFiscalEntitiesResponse',
        :'id' => :'String',
        :'livemode' => :'Boolean',
        :'name' => :'String',
        :'metadata' => :'Hash<String, Object>',
        :'object' => :'String',
        :'payment_sources' => :'CustomerPaymentMethodsResponse',
        :'phone' => :'String',
        :'shipping_contacts' => :'CustomerResponseShippingContacts',
        :'subscription' => :'SubscriptionResponse'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'antifraud_info',
        :'default_fiscal_entity_id',
        :'default_payment_source_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Conekta::CustomerResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Conekta::CustomerResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'antifraud_info')
        self.antifraud_info = attributes[:'antifraud_info']
      end

      if attributes.key?(:'corporate')
        self.corporate = attributes[:'corporate']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'custom_reference')
        self.custom_reference = attributes[:'custom_reference']
      end

      if attributes.key?(:'default_fiscal_entity_id')
        self.default_fiscal_entity_id = attributes[:'default_fiscal_entity_id']
      end

      if attributes.key?(:'default_shipping_contact_id')
        self.default_shipping_contact_id = attributes[:'default_shipping_contact_id']
      end

      if attributes.key?(:'default_payment_source_id')
        self.default_payment_source_id = attributes[:'default_payment_source_id']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'fiscal_entities')
        self.fiscal_entities = attributes[:'fiscal_entities']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'livemode')
        self.livemode = attributes[:'livemode']
      else
        self.livemode = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = nil
      end

      if attributes.key?(:'payment_sources')
        self.payment_sources = attributes[:'payment_sources']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'shipping_contacts')
        self.shipping_contacts = attributes[:'shipping_contacts']
      end

      if attributes.key?(:'subscription')
        self.subscription = attributes[:'subscription']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @livemode.nil?
        invalid_properties.push('invalid value for "livemode", livemode cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if !@metadata.nil? && @metadata.length > 100
        invalid_properties.push('invalid value for "metadata", number of items must be less than or equal to 100.')
      end

      if @object.nil?
        invalid_properties.push('invalid value for "object", object cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @created_at.nil?
      return false if @id.nil?
      return false if @livemode.nil?
      return false if @name.nil?
      return false if !@metadata.nil? && @metadata.length > 100
      return false if @object.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] metadata Value to be assigned
    def metadata=(metadata)
      if metadata.nil?
        fail ArgumentError, 'metadata cannot be nil'
      end

      if metadata.length > 100
        fail ArgumentError, 'invalid value for "metadata", number of items must be less than or equal to 100.'
      end

      @metadata = metadata
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          antifraud_info == o.antifraud_info &&
          corporate == o.corporate &&
          created_at == o.created_at &&
          custom_reference == o.custom_reference &&
          default_fiscal_entity_id == o.default_fiscal_entity_id &&
          default_shipping_contact_id == o.default_shipping_contact_id &&
          default_payment_source_id == o.default_payment_source_id &&
          email == o.email &&
          fiscal_entities == o.fiscal_entities &&
          id == o.id &&
          livemode == o.livemode &&
          name == o.name &&
          metadata == o.metadata &&
          object == o.object &&
          payment_sources == o.payment_sources &&
          phone == o.phone &&
          shipping_contacts == o.shipping_contacts &&
          subscription == o.subscription
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [antifraud_info, corporate, created_at, custom_reference, default_fiscal_entity_id, default_shipping_contact_id, default_payment_source_id, email, fiscal_entities, id, livemode, name, metadata, object, payment_sources, phone, shipping_contacts, subscription].hash
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
