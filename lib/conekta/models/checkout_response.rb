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
  # checkout response
  class CheckoutResponse
    # Are the payment methods available for this link
    attr_accessor :allowed_payment_methods

    # List of plan IDs that are available for subscription
    attr_accessor :plan_ids

    attr_accessor :can_not_expire

    attr_accessor :emails_sent

    attr_accessor :exclude_card_networks

    attr_accessor :expires_at

    attr_accessor :failure_url

    attr_accessor :force_3ds_flow

    attr_accessor :id

    attr_accessor :livemode

    attr_accessor :metadata

    attr_accessor :monthly_installments_enabled

    attr_accessor :monthly_installments_options

    # Reason for charge
    attr_accessor :name

    attr_accessor :needs_shipping_contact

    attr_accessor :object

    attr_accessor :paid_payments_count

    attr_accessor :payments_limit_count

    attr_accessor :recurrent

    attr_accessor :slug

    attr_accessor :sms_sent

    attr_accessor :starts_at

    attr_accessor :status

    attr_accessor :success_url

    attr_accessor :type

    attr_accessor :url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allowed_payment_methods' => :'allowed_payment_methods',
        :'plan_ids' => :'plan_ids',
        :'can_not_expire' => :'can_not_expire',
        :'emails_sent' => :'emails_sent',
        :'exclude_card_networks' => :'exclude_card_networks',
        :'expires_at' => :'expires_at',
        :'failure_url' => :'failure_url',
        :'force_3ds_flow' => :'force_3ds_flow',
        :'id' => :'id',
        :'livemode' => :'livemode',
        :'metadata' => :'metadata',
        :'monthly_installments_enabled' => :'monthly_installments_enabled',
        :'monthly_installments_options' => :'monthly_installments_options',
        :'name' => :'name',
        :'needs_shipping_contact' => :'needs_shipping_contact',
        :'object' => :'object',
        :'paid_payments_count' => :'paid_payments_count',
        :'payments_limit_count' => :'payments_limit_count',
        :'recurrent' => :'recurrent',
        :'slug' => :'slug',
        :'sms_sent' => :'sms_sent',
        :'starts_at' => :'starts_at',
        :'status' => :'status',
        :'success_url' => :'success_url',
        :'type' => :'type',
        :'url' => :'url'
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
        :'plan_ids' => :'Array<String>',
        :'can_not_expire' => :'Boolean',
        :'emails_sent' => :'Integer',
        :'exclude_card_networks' => :'Array<Object>',
        :'expires_at' => :'Integer',
        :'failure_url' => :'String',
        :'force_3ds_flow' => :'Boolean',
        :'id' => :'String',
        :'livemode' => :'Boolean',
        :'metadata' => :'Hash<String, Object>',
        :'monthly_installments_enabled' => :'Boolean',
        :'monthly_installments_options' => :'Array<Integer>',
        :'name' => :'String',
        :'needs_shipping_contact' => :'Boolean',
        :'object' => :'String',
        :'paid_payments_count' => :'Integer',
        :'payments_limit_count' => :'Integer',
        :'recurrent' => :'Boolean',
        :'slug' => :'String',
        :'sms_sent' => :'Integer',
        :'starts_at' => :'Integer',
        :'status' => :'String',
        :'success_url' => :'String',
        :'type' => :'String',
        :'url' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'payments_limit_count',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Conekta::CheckoutResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Conekta::CheckoutResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'allowed_payment_methods')
        if (value = attributes[:'allowed_payment_methods']).is_a?(Array)
          self.allowed_payment_methods = value
        end
      end

      if attributes.key?(:'plan_ids')
        if (value = attributes[:'plan_ids']).is_a?(Array)
          self.plan_ids = value
        end
      end

      if attributes.key?(:'can_not_expire')
        self.can_not_expire = attributes[:'can_not_expire']
      end

      if attributes.key?(:'emails_sent')
        self.emails_sent = attributes[:'emails_sent']
      end

      if attributes.key?(:'exclude_card_networks')
        if (value = attributes[:'exclude_card_networks']).is_a?(Array)
          self.exclude_card_networks = value
        end
      end

      if attributes.key?(:'expires_at')
        self.expires_at = attributes[:'expires_at']
      end

      if attributes.key?(:'failure_url')
        self.failure_url = attributes[:'failure_url']
      end

      if attributes.key?(:'force_3ds_flow')
        self.force_3ds_flow = attributes[:'force_3ds_flow']
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

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Hash)
          self.metadata = value
        end
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
      else
        self.name = nil
      end

      if attributes.key?(:'needs_shipping_contact')
        self.needs_shipping_contact = attributes[:'needs_shipping_contact']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      else
        self.object = nil
      end

      if attributes.key?(:'paid_payments_count')
        self.paid_payments_count = attributes[:'paid_payments_count']
      end

      if attributes.key?(:'payments_limit_count')
        self.payments_limit_count = attributes[:'payments_limit_count']
      end

      if attributes.key?(:'recurrent')
        self.recurrent = attributes[:'recurrent']
      end

      if attributes.key?(:'slug')
        self.slug = attributes[:'slug']
      end

      if attributes.key?(:'sms_sent')
        self.sms_sent = attributes[:'sms_sent']
      end

      if attributes.key?(:'starts_at')
        self.starts_at = attributes[:'starts_at']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'success_url')
        self.success_url = attributes[:'success_url']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @livemode.nil?
        invalid_properties.push('invalid value for "livemode", livemode cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
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
      return false if @id.nil?
      return false if @livemode.nil?
      return false if @name.nil?
      return false if @object.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allowed_payment_methods == o.allowed_payment_methods &&
          plan_ids == o.plan_ids &&
          can_not_expire == o.can_not_expire &&
          emails_sent == o.emails_sent &&
          exclude_card_networks == o.exclude_card_networks &&
          expires_at == o.expires_at &&
          failure_url == o.failure_url &&
          force_3ds_flow == o.force_3ds_flow &&
          id == o.id &&
          livemode == o.livemode &&
          metadata == o.metadata &&
          monthly_installments_enabled == o.monthly_installments_enabled &&
          monthly_installments_options == o.monthly_installments_options &&
          name == o.name &&
          needs_shipping_contact == o.needs_shipping_contact &&
          object == o.object &&
          paid_payments_count == o.paid_payments_count &&
          payments_limit_count == o.payments_limit_count &&
          recurrent == o.recurrent &&
          slug == o.slug &&
          sms_sent == o.sms_sent &&
          starts_at == o.starts_at &&
          status == o.status &&
          success_url == o.success_url &&
          type == o.type &&
          url == o.url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [allowed_payment_methods, plan_ids, can_not_expire, emails_sent, exclude_card_networks, expires_at, failure_url, force_3ds_flow, id, livemode, metadata, monthly_installments_enabled, monthly_installments_options, name, needs_shipping_contact, object, paid_payments_count, payments_limit_count, recurrent, slug, sms_sent, starts_at, status, success_url, type, url].hash
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
