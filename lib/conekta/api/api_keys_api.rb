=begin
#Conekta API

#Conekta sdk

The version of the OpenAPI document: 2.2.0
Contact: engineering@conekta.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module Conekta
  class ApiKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Api Key
    # Create a api key
    # @param api_key_request [ApiKeyRequest] requested field for a api keys
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [ApiKeyCreateResponse]
    def create_api_key(api_key_request, opts = {})
      data, _status_code, _headers = create_api_key_with_http_info(api_key_request, opts)
      data
    end

    # Create Api Key
    # Create a api key
    # @param api_key_request [ApiKeyRequest] requested field for a api keys
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [Array<(ApiKeyCreateResponse, Integer, Hash)>] ApiKeyCreateResponse data, response status code and response headers
    def create_api_key_with_http_info(api_key_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiKeysApi.create_api_key ...'
      end
      # verify the required parameter 'api_key_request' is set
      if @api_client.config.client_side_validation && api_key_request.nil?
        fail ArgumentError, "Missing the required parameter 'api_key_request' when calling ApiKeysApi.create_api_key"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api_keys'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.conekta-v2.2.0+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?
      header_params[:'X-Child-Company-Id'] = opts[:'x_child_company_id'] if !opts[:'x_child_company_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(api_key_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApiKeyCreateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ApiKeysApi.create_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiKeysApi#create_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Api Key
    # Deletes a api key that corresponds to a api key ID
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [DeleteApiKeysResponse]
    def delete_api_key(id, opts = {})
      data, _status_code, _headers = delete_api_key_with_http_info(id, opts)
      data
    end

    # Delete Api Key
    # Deletes a api key that corresponds to a api key ID
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [Array<(DeleteApiKeysResponse, Integer, Hash)>] DeleteApiKeysResponse data, response status code and response headers
    def delete_api_key_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiKeysApi.delete_api_key ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApiKeysApi.delete_api_key"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api_keys/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.conekta-v2.2.0+json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeleteApiKeysResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ApiKeysApi.delete_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiKeysApi#delete_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Api Key
    # Gets a api key that corresponds to a api key ID
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [ApiKeyResponse]
    def get_api_key(id, opts = {})
      data, _status_code, _headers = get_api_key_with_http_info(id, opts)
      data
    end

    # Get Api Key
    # Gets a api key that corresponds to a api key ID
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [Array<(ApiKeyResponse, Integer, Hash)>] ApiKeyResponse data, response status code and response headers
    def get_api_key_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiKeysApi.get_api_key ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApiKeysApi.get_api_key"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api_keys/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.conekta-v2.2.0+json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?
      header_params[:'X-Child-Company-Id'] = opts[:'x_child_company_id'] if !opts[:'x_child_company_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ApiKeysApi.get_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiKeysApi#get_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of Api Keys
    # Consume the list of api keys you have
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250 (default to 20)
    # @option opts [String] :_next next page
    # @option opts [String] :previous previous page
    # @option opts [String] :search General search, e.g. by id, description, prefix
    # @return [GetApiKeysResponse]
    def get_api_keys(opts = {})
      data, _status_code, _headers = get_api_keys_with_http_info(opts)
      data
    end

    # Get list of Api Keys
    # Consume the list of api keys you have
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @option opts [Integer] :limit The numbers of items to return, the maximum value is 250 (default to 20)
    # @option opts [String] :_next next page
    # @option opts [String] :previous previous page
    # @option opts [String] :search General search, e.g. by id, description, prefix
    # @return [Array<(GetApiKeysResponse, Integer, Hash)>] GetApiKeysResponse data, response status code and response headers
    def get_api_keys_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiKeysApi.get_api_keys ...'
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 250
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ApiKeysApi.get_api_keys, must be smaller than or equal to 250.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ApiKeysApi.get_api_keys, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/api_keys'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'next'] = opts[:'_next'] if !opts[:'_next'].nil?
      query_params[:'previous'] = opts[:'previous'] if !opts[:'previous'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.conekta-v2.2.0+json'])
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?
      header_params[:'X-Child-Company-Id'] = opts[:'x_child_company_id'] if !opts[:'x_child_company_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetApiKeysResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ApiKeysApi.get_api_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiKeysApi#get_api_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Api Key
    # Update an existing api key
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [ApiKeyUpdateRequest] :api_key_update_request 
    # @return [ApiKeyResponse]
    def update_api_key(id, opts = {})
      data, _status_code, _headers = update_api_key_with_http_info(id, opts)
      data
    end

    # Update Api Key
    # Update an existing api key
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [ApiKeyUpdateRequest] :api_key_update_request 
    # @return [Array<(ApiKeyResponse, Integer, Hash)>] ApiKeyResponse data, response status code and response headers
    def update_api_key_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApiKeysApi.update_api_key ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApiKeysApi.update_api_key"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api_keys/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.conekta-v2.2.0+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Accept-Language'] = opts[:'accept_language'] if !opts[:'accept_language'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'api_key_update_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiKeyResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ApiKeysApi.update_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApiKeysApi#update_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
