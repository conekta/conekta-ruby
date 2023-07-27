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
  # a order
  class OrderRequest
    # List of [charges](https://developers.conekta.com/v2.1.0/reference/orderscreatecharge) that are applied to the order
    attr_accessor :charges

    attr_accessor :checkout

    # Currency with which the payment will be made. It uses the 3-letter code of the [International Standard ISO 4217.](https://es.wikipedia.org/wiki/ISO_4217)
    attr_accessor :currency

    attr_accessor :customer_info

    # List of [discounts](https://developers.conekta.com/v2.1.0/reference/orderscreatediscountline) that are applied to the order. You must have at least one discount.
    attr_accessor :discount_lines

    # List of [products](https://developers.conekta.com/v2.1.0/reference/orderscreateproduct) that are sold in the order. You must have at least one product.
    attr_accessor :line_items

    # Metadata associated with the order
    attr_accessor :metadata

    # Allows you to fill out the shipping information at checkout
    attr_accessor :needs_shipping_contact

    # Indicates whether the order charges must be preauthorized
    attr_accessor :pre_authorize

    # Indicates the processing mode for the order, either ecommerce, recurrent or validation.
    attr_accessor :processing_mode

    attr_accessor :shipping_contact

    # List of [shipping costs](https://developers.conekta.com/v2.1.0/reference/orderscreateshipping). If the online store offers digital products.
    attr_accessor :shipping_lines

    # List of [taxes](https://developers.conekta.com/v2.1.0/reference/orderscreatetaxes) that are applied to the order.
    attr_accessor :tax_lines

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'charges' => :'charges',
        :'checkout' => :'checkout',
        :'currency' => :'currency',
        :'customer_info' => :'customer_info',
        :'discount_lines' => :'discount_lines',
        :'line_items' => :'line_items',
        :'metadata' => :'metadata',
        :'needs_shipping_contact' => :'needs_shipping_contact',
        :'pre_authorize' => :'pre_authorize',
        :'processing_mode' => :'processing_mode',
        :'shipping_contact' => :'shipping_contact',
        :'shipping_lines' => :'shipping_lines',
        :'tax_lines' => :'tax_lines'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'charges' => :'Array<ChargeRequest>',
        :'checkout' => :'CheckoutRequest',
        :'currency' => :'String',
        :'customer_info' => :'OrderRequestCustomerInfo',
        :'discount_lines' => :'Array<OrderDiscountLinesRequest>',
        :'line_items' => :'Array<Product>',
        :'metadata' => :'Hash<String, Object>',
        :'needs_shipping_contact' => :'Boolean',
        :'pre_authorize' => :'Boolean',
        :'processing_mode' => :'String',
        :'shipping_contact' => :'CustomerShippingContacts',
        :'shipping_lines' => :'Array<ShippingRequest>',
        :'tax_lines' => :'Array<OrderTaxRequest>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Conekta::OrderRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Conekta::OrderRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'charges')
        if (value = attributes[:'charges']).is_a?(Array)
          self.charges = value
        end
      end

      if attributes.key?(:'checkout')
        self.checkout = attributes[:'checkout']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'customer_info')
        self.customer_info = attributes[:'customer_info']
      end

      if attributes.key?(:'discount_lines')
        if (value = attributes[:'discount_lines']).is_a?(Array)
          self.discount_lines = value
        end
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
      end

      if attributes.key?(:'needs_shipping_contact')
        self.needs_shipping_contact = attributes[:'needs_shipping_contact']
      end

      if attributes.key?(:'pre_authorize')
        self.pre_authorize = attributes[:'pre_authorize']
      else
        self.pre_authorize = false
      end

      if attributes.key?(:'processing_mode')
        self.processing_mode = attributes[:'processing_mode']
      end

      if attributes.key?(:'shipping_contact')
        self.shipping_contact = attributes[:'shipping_contact']
      end

      if attributes.key?(:'shipping_lines')
        if (value = attributes[:'shipping_lines']).is_a?(Array)
          self.shipping_lines = value
        end
      end

      if attributes.key?(:'tax_lines')
        if (value = attributes[:'tax_lines']).is_a?(Array)
          self.tax_lines = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @currency.to_s.length > 3
        invalid_properties.push('invalid value for "currency", the character length must be smaller than or equal to 3.')
      end

      if @customer_info.nil?
        invalid_properties.push('invalid value for "customer_info", customer_info cannot be nil.')
      end

      if @line_items.nil?
        invalid_properties.push('invalid value for "line_items", line_items cannot be nil.')
      end

      if !@metadata.nil? && @metadata.length > 100
        invalid_properties.push('invalid value for "metadata", number of items must be less than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @currency.nil?
      return false if @currency.to_s.length > 3
      return false if @customer_info.nil?
      return false if @line_items.nil?
      return false if !@metadata.nil? && @metadata.length > 100
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

    # Custom attribute writer method with validation
    # @param [Object] metadata Value to be assigned
    def metadata=(metadata)
      if !metadata.nil? && metadata.length > 100
        fail ArgumentError, 'invalid value for "metadata", number of items must be less than or equal to 100.'
      end

      @metadata = metadata
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          charges == o.charges &&
          checkout == o.checkout &&
          currency == o.currency &&
          customer_info == o.customer_info &&
          discount_lines == o.discount_lines &&
          line_items == o.line_items &&
          metadata == o.metadata &&
          needs_shipping_contact == o.needs_shipping_contact &&
          pre_authorize == o.pre_authorize &&
          processing_mode == o.processing_mode &&
          shipping_contact == o.shipping_contact &&
          shipping_lines == o.shipping_lines &&
          tax_lines == o.tax_lines
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [charges, checkout, currency, customer_info, discount_lines, line_items, metadata, needs_shipping_contact, pre_authorize, processing_mode, shipping_contact, shipping_lines, tax_lines].hash
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
