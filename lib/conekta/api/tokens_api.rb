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
  class TokensApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Token
    # Generate a payment token, to associate it with a card 
    # @param token [Token] requested field for token
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [TokenResponse]
    def create_token(token, opts = {})
      data, _status_code, _headers = create_token_with_http_info(token, opts)
      data
    end

    # Create Token
    # Generate a payment token, to associate it with a card 
    # @param token [Token] requested field for token
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def create_token_with_http_info(token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApi.create_token ...'
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling TokensApi.create_token"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/tokens'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(token)

      # return_type
      return_type = opts[:debug_return_type] || 'TokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TokensApi.create_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApi#create_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
