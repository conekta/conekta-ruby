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
  class AntifraudApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create blacklisted rule
    # @param create_risk_rules_data [CreateRiskRulesData] requested field for blacklist rule
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [BlacklistRuleResponse]
    def create_rule_blacklist(create_risk_rules_data, opts = {})
      data, _status_code, _headers = create_rule_blacklist_with_http_info(create_risk_rules_data, opts)
      data
    end

    # Create blacklisted rule
    # @param create_risk_rules_data [CreateRiskRulesData] requested field for blacklist rule
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [Array<(BlacklistRuleResponse, Integer, Hash)>] BlacklistRuleResponse data, response status code and response headers
    def create_rule_blacklist_with_http_info(create_risk_rules_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AntifraudApi.create_rule_blacklist ...'
      end
      # verify the required parameter 'create_risk_rules_data' is set
      if @api_client.config.client_side_validation && create_risk_rules_data.nil?
        fail ArgumentError, "Missing the required parameter 'create_risk_rules_data' when calling AntifraudApi.create_rule_blacklist"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/antifraud/blacklists'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_risk_rules_data)

      # return_type
      return_type = opts[:debug_return_type] || 'BlacklistRuleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AntifraudApi.create_rule_blacklist",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AntifraudApi#create_rule_blacklist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create whitelisted rule
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [CreateRiskRulesData] :create_risk_rules_data 
    # @return [WhitelistlistRuleResponse]
    def create_rule_whitelist(opts = {})
      data, _status_code, _headers = create_rule_whitelist_with_http_info(opts)
      data
    end

    # Create whitelisted rule
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [CreateRiskRulesData] :create_risk_rules_data 
    # @return [Array<(WhitelistlistRuleResponse, Integer, Hash)>] WhitelistlistRuleResponse data, response status code and response headers
    def create_rule_whitelist_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AntifraudApi.create_rule_whitelist ...'
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/antifraud/whitelists'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_risk_rules_data'])

      # return_type
      return_type = opts[:debug_return_type] || 'WhitelistlistRuleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AntifraudApi.create_rule_whitelist",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AntifraudApi#create_rule_whitelist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete blacklisted rule
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [DeletedBlacklistRuleResponse]
    def delete_rule_blacklist(id, opts = {})
      data, _status_code, _headers = delete_rule_blacklist_with_http_info(id, opts)
      data
    end

    # Delete blacklisted rule
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [Array<(DeletedBlacklistRuleResponse, Integer, Hash)>] DeletedBlacklistRuleResponse data, response status code and response headers
    def delete_rule_blacklist_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AntifraudApi.delete_rule_blacklist ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AntifraudApi.delete_rule_blacklist"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/antifraud/blacklists/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'DeletedBlacklistRuleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AntifraudApi.delete_rule_blacklist",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AntifraudApi#delete_rule_blacklist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete whitelisted rule
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [DeletedWhitelistRuleResponse]
    def delete_rule_whitelist(id, opts = {})
      data, _status_code, _headers = delete_rule_whitelist_with_http_info(id, opts)
      data
    end

    # Delete whitelisted rule
    # @param id [String] Identifier of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [Array<(DeletedWhitelistRuleResponse, Integer, Hash)>] DeletedWhitelistRuleResponse data, response status code and response headers
    def delete_rule_whitelist_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AntifraudApi.delete_rule_whitelist ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AntifraudApi.delete_rule_whitelist"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/antifraud/whitelists/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'DeletedWhitelistRuleResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AntifraudApi.delete_rule_whitelist",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AntifraudApi#delete_rule_whitelist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of blacklisted rules
    # Return all rules
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [RiskRulesList]
    def get_rule_blacklist(opts = {})
      data, _status_code, _headers = get_rule_blacklist_with_http_info(opts)
      data
    end

    # Get list of blacklisted rules
    # Return all rules
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [Array<(RiskRulesList, Integer, Hash)>] RiskRulesList data, response status code and response headers
    def get_rule_blacklist_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AntifraudApi.get_rule_blacklist ...'
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/antifraud/blacklists'

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
      return_type = opts[:debug_return_type] || 'RiskRulesList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AntifraudApi.get_rule_blacklist",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AntifraudApi#get_rule_blacklist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of whitelisted rules
    # Return all rules
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [RiskRulesList]
    def get_rule_whitelist(opts = {})
      data, _status_code, _headers = get_rule_whitelist_with_http_info(opts)
      data
    end

    # Get a list of whitelisted rules
    # Return all rules
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @return [Array<(RiskRulesList, Integer, Hash)>] RiskRulesList data, response status code and response headers
    def get_rule_whitelist_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AntifraudApi.get_rule_whitelist ...'
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/antifraud/whitelists'

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
      return_type = opts[:debug_return_type] || 'RiskRulesList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"AntifraudApi.get_rule_whitelist",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AntifraudApi#get_rule_whitelist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
