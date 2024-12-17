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
  # update customer
  class UpdateCustomer
    attr_accessor :antifraud_info

    # It is a parameter that allows to identify the date of birth of the client.
    attr_accessor :date_of_birth

    # It is a parameter that allows to identify in the response, the Conekta ID of a payment method (payment_id)
    attr_accessor :default_payment_source_id

    # An email address is a series of customizable characters followed by a universal Internet symbol, the at symbol (@), the name of a host server, and a web domain ending (.mx, .com, .org, . net, etc).
    attr_accessor :email

    # Client's name
    attr_accessor :name

    # Is the customer's phone number
    attr_accessor :phone

    # Contains the ID of a plan, which could together with name, email and phone create a client directly to a subscription
    attr_accessor :plan_id

    # It is a parameter that allows to identify in the response, the Conekta ID of the shipping address (shipping_contact)
    attr_accessor :default_shipping_contact_id

    # It is a value that allows identifying if the email is corporate or not.
    attr_accessor :corporate

    # It is an undefined value.
    attr_accessor :custom_reference

    attr_accessor :fiscal_entities

    attr_accessor :metadata

    # It is a parameter that allows to identify the national identification number of the client.
    attr_accessor :national_id

    # Contains details of the payment methods that the customer has active or has used in Conekta
    attr_accessor :payment_sources

    # Contains the detail of the shipping addresses that the client has active or has used in Conekta
    attr_accessor :shipping_contacts

    attr_accessor :subscription

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'antifraud_info' => :'antifraud_info',
        :'date_of_birth' => :'date_of_birth',
        :'default_payment_source_id' => :'default_payment_source_id',
        :'email' => :'email',
        :'name' => :'name',
        :'phone' => :'phone',
        :'plan_id' => :'plan_id',
        :'default_shipping_contact_id' => :'default_shipping_contact_id',
        :'corporate' => :'corporate',
        :'custom_reference' => :'custom_reference',
        :'fiscal_entities' => :'fiscal_entities',
        :'metadata' => :'metadata',
        :'national_id' => :'national_id',
        :'payment_sources' => :'payment_sources',
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
        :'antifraud_info' => :'UpdateCustomerAntifraudInfo',
        :'date_of_birth' => :'String',
        :'default_payment_source_id' => :'String',
        :'email' => :'String',
        :'name' => :'String',
        :'phone' => :'String',
        :'plan_id' => :'String',
        :'default_shipping_contact_id' => :'String',
        :'corporate' => :'Boolean',
        :'custom_reference' => :'String',
        :'fiscal_entities' => :'Array<CustomerFiscalEntitiesRequest>',
        :'metadata' => :'Hash<String, Object>',
        :'national_id' => :'String',
        :'payment_sources' => :'Array<CustomerPaymentMethodsRequest>',
        :'shipping_contacts' => :'Array<CustomerShippingContacts>',
        :'subscription' => :'SubscriptionRequest'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'antifraud_info',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Conekta::UpdateCustomer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Conekta::UpdateCustomer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'antifraud_info')
        self.antifraud_info = attributes[:'antifraud_info']
      end

      if attributes.key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.key?(:'default_payment_source_id')
        self.default_payment_source_id = attributes[:'default_payment_source_id']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'plan_id')
        self.plan_id = attributes[:'plan_id']
      end

      if attributes.key?(:'default_shipping_contact_id')
        self.default_shipping_contact_id = attributes[:'default_shipping_contact_id']
      end

      if attributes.key?(:'corporate')
        self.corporate = attributes[:'corporate']
      else
        self.corporate = false
      end

      if attributes.key?(:'custom_reference')
        self.custom_reference = attributes[:'custom_reference']
      end

      if attributes.key?(:'fiscal_entities')
        if (value = attributes[:'fiscal_entities']).is_a?(Array)
          self.fiscal_entities = value
        end
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'national_id')
        self.national_id = attributes[:'national_id']
      end

      if attributes.key?(:'payment_sources')
        if (value = attributes[:'payment_sources']).is_a?(Array)
          self.payment_sources = value
        end
      end

      if attributes.key?(:'shipping_contacts')
        if (value = attributes[:'shipping_contacts']).is_a?(Array)
          self.shipping_contacts = value
        end
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
      if !@metadata.nil? && @metadata.length > 100
        invalid_properties.push('invalid value for "metadata", number of items must be less than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@metadata.nil? && @metadata.length > 100
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
          date_of_birth == o.date_of_birth &&
          default_payment_source_id == o.default_payment_source_id &&
          email == o.email &&
          name == o.name &&
          phone == o.phone &&
          plan_id == o.plan_id &&
          default_shipping_contact_id == o.default_shipping_contact_id &&
          corporate == o.corporate &&
          custom_reference == o.custom_reference &&
          fiscal_entities == o.fiscal_entities &&
          metadata == o.metadata &&
          national_id == o.national_id &&
          payment_sources == o.payment_sources &&
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
      [antifraud_info, date_of_birth, default_payment_source_id, email, name, phone, plan_id, default_shipping_contact_id, corporate, custom_reference, fiscal_entities, metadata, national_id, payment_sources, shipping_contacts, subscription].hash
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
