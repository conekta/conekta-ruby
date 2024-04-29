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
  # log model
  class LogResponse
    attr_accessor :created_at

    attr_accessor :id

    attr_accessor :ip_address

    attr_accessor :livemode

    attr_accessor :loggable_id

    attr_accessor :loggable_type

    attr_accessor :method

    attr_accessor :oauth_token_id

    attr_accessor :query_string

    attr_accessor :related

    attr_accessor :request_body

    attr_accessor :request_headers

    attr_accessor :response_body

    attr_accessor :response_headers

    attr_accessor :searchable_tags

    attr_accessor :status

    attr_accessor :updated_at

    attr_accessor :url

    attr_accessor :user_account_id

    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created_at' => :'created_at',
        :'id' => :'id',
        :'ip_address' => :'ip_address',
        :'livemode' => :'livemode',
        :'loggable_id' => :'loggable_id',
        :'loggable_type' => :'loggable_type',
        :'method' => :'method',
        :'oauth_token_id' => :'oauth_token_id',
        :'query_string' => :'query_string',
        :'related' => :'related',
        :'request_body' => :'request_body',
        :'request_headers' => :'request_headers',
        :'response_body' => :'response_body',
        :'response_headers' => :'response_headers',
        :'searchable_tags' => :'searchable_tags',
        :'status' => :'status',
        :'updated_at' => :'updated_at',
        :'url' => :'url',
        :'user_account_id' => :'user_account_id',
        :'version' => :'version'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'created_at' => :'Integer',
        :'id' => :'String',
        :'ip_address' => :'String',
        :'livemode' => :'Boolean',
        :'loggable_id' => :'String',
        :'loggable_type' => :'String',
        :'method' => :'String',
        :'oauth_token_id' => :'String',
        :'query_string' => :'Hash<String, Object>',
        :'related' => :'String',
        :'request_body' => :'Object',
        :'request_headers' => :'Hash<String, String>',
        :'response_body' => :'Object',
        :'response_headers' => :'Hash<String, String>',
        :'searchable_tags' => :'Array<String>',
        :'status' => :'String',
        :'updated_at' => :'String',
        :'url' => :'String',
        :'user_account_id' => :'String',
        :'version' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'loggable_id',
        :'loggable_type',
        :'oauth_token_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Conekta::LogResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Conekta::LogResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'ip_address')
        self.ip_address = attributes[:'ip_address']
      end

      if attributes.key?(:'livemode')
        self.livemode = attributes[:'livemode']
      else
        self.livemode = nil
      end

      if attributes.key?(:'loggable_id')
        self.loggable_id = attributes[:'loggable_id']
      end

      if attributes.key?(:'loggable_type')
        self.loggable_type = attributes[:'loggable_type']
      end

      if attributes.key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.key?(:'oauth_token_id')
        self.oauth_token_id = attributes[:'oauth_token_id']
      end

      if attributes.key?(:'query_string')
        if (value = attributes[:'query_string']).is_a?(Hash)
          self.query_string = value
        end
      end

      if attributes.key?(:'related')
        self.related = attributes[:'related']
      end

      if attributes.key?(:'request_body')
        self.request_body = attributes[:'request_body']
      end

      if attributes.key?(:'request_headers')
        if (value = attributes[:'request_headers']).is_a?(Hash)
          self.request_headers = value
        end
      end

      if attributes.key?(:'response_body')
        self.response_body = attributes[:'response_body']
      end

      if attributes.key?(:'response_headers')
        if (value = attributes[:'response_headers']).is_a?(Hash)
          self.response_headers = value
        end
      end

      if attributes.key?(:'searchable_tags')
        if (value = attributes[:'searchable_tags']).is_a?(Array)
          self.searchable_tags = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'user_account_id')
        self.user_account_id = attributes[:'user_account_id']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @created_at.nil?
      return false if @id.nil?
      return false if @livemode.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_at == o.created_at &&
          id == o.id &&
          ip_address == o.ip_address &&
          livemode == o.livemode &&
          loggable_id == o.loggable_id &&
          loggable_type == o.loggable_type &&
          method == o.method &&
          oauth_token_id == o.oauth_token_id &&
          query_string == o.query_string &&
          related == o.related &&
          request_body == o.request_body &&
          request_headers == o.request_headers &&
          response_body == o.response_body &&
          response_headers == o.response_headers &&
          searchable_tags == o.searchable_tags &&
          status == o.status &&
          updated_at == o.updated_at &&
          url == o.url &&
          user_account_id == o.user_account_id &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [created_at, id, ip_address, livemode, loggable_id, loggable_type, method, oauth_token_id, query_string, related, request_body, request_headers, response_body, response_headers, searchable_tags, status, updated_at, url, user_account_id, version].hash
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
