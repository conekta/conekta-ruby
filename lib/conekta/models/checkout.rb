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
  # It is a sub-resource of the Order model that can be stipulated in order to configure its corresponding checkout
  class Checkout
    # Those are the payment methods that will be available for the link
    attr_accessor :allowed_payment_methods

    # It is the time when the link will expire. It is expressed in seconds since the Unix epoch. The valid range is from 2 to 365 days (the valid range will be taken from the next day of the creation date at 00:01 hrs) 
    attr_accessor :expires_at

    # This flag allows you to specify if months without interest will be active.
    attr_accessor :monthly_installments_enabled

    # This field allows you to specify the number of months without interest.
    attr_accessor :monthly_installments_options

    # Indicates the 3DS2 mode for the order, either smart or strict.
    attr_accessor :three_ds_mode

    # Reason for charge
    attr_accessor :name

    # This flag allows you to fill in the shipping information at checkout.
    attr_accessor :needs_shipping_contact

    # This flag allows you to specify if the link will be on demand.
    attr_accessor :on_demand_enabled

    attr_accessor :order_template

    # It is the number of payments that can be made through the link.
    attr_accessor :payments_limit_count

    # false: single use. true: multiple payments
    attr_accessor :recurrent

    # It is the type of link that will be created. It must be a valid type.
    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allowed_payment_methods' => :'allowed_payment_methods',
        :'expires_at' => :'expires_at',
        :'monthly_installments_enabled' => :'monthly_installments_enabled',
        :'monthly_installments_options' => :'monthly_installments_options',
        :'three_ds_mode' => :'three_ds_mode',
        :'name' => :'name',
        :'needs_shipping_contact' => :'needs_shipping_contact',
        :'on_demand_enabled' => :'on_demand_enabled',
        :'order_template' => :'order_template',
        :'payments_limit_count' => :'payments_limit_count',
        :'recurrent' => :'recurrent',
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
        :'monthly_installments_enabled' => :'Boolean',
        :'monthly_installments_options' => :'Array<Integer>',
        :'three_ds_mode' => :'String',
        :'name' => :'String',
        :'needs_shipping_contact' => :'Boolean',
        :'on_demand_enabled' => :'Boolean',
        :'order_template' => :'CheckoutOrderTemplate',
        :'payments_limit_count' => :'Integer',
        :'recurrent' => :'Boolean',
        :'type' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'on_demand_enabled',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Conekta::Checkout` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Conekta::Checkout`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'allowed_payment_methods')
        if (value = attributes[:'allowed_payment_methods']).is_a?(Array)
          self.allowed_payment_methods = value
        end
      else
        self.allowed_payment_methods = nil
      end

      if attributes.key?(:'expires_at')
        self.expires_at = attributes[:'expires_at']
      else
        self.expires_at = nil
      end

      if attributes.key?(:'monthly_installments_enabled')
        self.monthly_installments_enabled = attributes[:'monthly_installments_enabled']
      end

      if attributes.key?(:'monthly_installments_options')
        if (value = attributes[:'monthly_installments_options']).is_a?(Array)
          self.monthly_installments_options = value
        end
      end

      if attributes.key?(:'three_ds_mode')
        self.three_ds_mode = attributes[:'three_ds_mode']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'needs_shipping_contact')
        self.needs_shipping_contact = attributes[:'needs_shipping_contact']
      end

      if attributes.key?(:'on_demand_enabled')
        self.on_demand_enabled = attributes[:'on_demand_enabled']
      end

      if attributes.key?(:'order_template')
        self.order_template = attributes[:'order_template']
      else
        self.order_template = nil
      end

      if attributes.key?(:'payments_limit_count')
        self.payments_limit_count = attributes[:'payments_limit_count']
      end

      if attributes.key?(:'recurrent')
        self.recurrent = attributes[:'recurrent']
      else
        self.recurrent = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @allowed_payment_methods.nil?
        invalid_properties.push('invalid value for "allowed_payment_methods", allowed_payment_methods cannot be nil.')
      end

      if @expires_at.nil?
        invalid_properties.push('invalid value for "expires_at", expires_at cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @order_template.nil?
        invalid_properties.push('invalid value for "order_template", order_template cannot be nil.')
      end

      if @recurrent.nil?
        invalid_properties.push('invalid value for "recurrent", recurrent cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @allowed_payment_methods.nil?
      return false if @expires_at.nil?
      return false if @name.nil?
      return false if @order_template.nil?
      return false if @recurrent.nil?
      return false if @type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allowed_payment_methods == o.allowed_payment_methods &&
          expires_at == o.expires_at &&
          monthly_installments_enabled == o.monthly_installments_enabled &&
          monthly_installments_options == o.monthly_installments_options &&
          three_ds_mode == o.three_ds_mode &&
          name == o.name &&
          needs_shipping_contact == o.needs_shipping_contact &&
          on_demand_enabled == o.on_demand_enabled &&
          order_template == o.order_template &&
          payments_limit_count == o.payments_limit_count &&
          recurrent == o.recurrent &&
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
      [allowed_payment_methods, expires_at, monthly_installments_enabled, monthly_installments_options, three_ds_mode, name, needs_shipping_contact, on_demand_enabled, order_template, payments_limit_count, recurrent, type].hash
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
