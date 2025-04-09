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
  class TaxesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Tax
    # Create new taxes for an existing orden
    # @param id [String] Identifier of the resource
    # @param order_tax_request [OrderTaxRequest] requested field for a taxes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [UpdateOrderTaxResponse]
    def orders_create_taxes(id, order_tax_request, opts = {})
      data, _status_code, _headers = orders_create_taxes_with_http_info(id, order_tax_request, opts)
      data
    end

    # Create Tax
    # Create new taxes for an existing orden
    # @param id [String] Identifier of the resource
    # @param order_tax_request [OrderTaxRequest] requested field for a taxes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [Array<(UpdateOrderTaxResponse, Integer, Hash)>] UpdateOrderTaxResponse data, response status code and response headers
    def orders_create_taxes_with_http_info(id, order_tax_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxesApi.orders_create_taxes ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxesApi.orders_create_taxes"
      end
      # verify the required parameter 'order_tax_request' is set
      if @api_client.config.client_side_validation && order_tax_request.nil?
        fail ArgumentError, "Missing the required parameter 'order_tax_request' when calling TaxesApi.orders_create_taxes"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/orders/{id}/tax_lines'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(order_tax_request)

      # return_type
      return_type = opts[:debug_return_type] || 'UpdateOrderTaxResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TaxesApi.orders_create_taxes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#orders_create_taxes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Tax
    # Delete taxes for an existing orden
    # @param id [String] Identifier of the resource
    # @param tax_id [String] identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [UpdateOrderTaxResponse]
    def orders_delete_taxes(id, tax_id, opts = {})
      data, _status_code, _headers = orders_delete_taxes_with_http_info(id, tax_id, opts)
      data
    end

    # Delete Tax
    # Delete taxes for an existing orden
    # @param id [String] Identifier of the resource
    # @param tax_id [String] identifier
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [Array<(UpdateOrderTaxResponse, Integer, Hash)>] UpdateOrderTaxResponse data, response status code and response headers
    def orders_delete_taxes_with_http_info(id, tax_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxesApi.orders_delete_taxes ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxesApi.orders_delete_taxes"
      end
      # verify the required parameter 'tax_id' is set
      if @api_client.config.client_side_validation && tax_id.nil?
        fail ArgumentError, "Missing the required parameter 'tax_id' when calling TaxesApi.orders_delete_taxes"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/orders/{id}/tax_lines/{tax_id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'tax_id' + '}', CGI.escape(tax_id.to_s))

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
      return_type = opts[:debug_return_type] || 'UpdateOrderTaxResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TaxesApi.orders_delete_taxes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#orders_delete_taxes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Tax
    # Update taxes for an existing orden
    # @param id [String] Identifier of the resource
    # @param tax_id [String] identifier
    # @param update_order_tax_request [UpdateOrderTaxRequest] requested field for taxes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [UpdateOrderTaxResponse]
    def orders_update_taxes(id, tax_id, update_order_tax_request, opts = {})
      data, _status_code, _headers = orders_update_taxes_with_http_info(id, tax_id, update_order_tax_request, opts)
      data
    end

    # Update Tax
    # Update taxes for an existing orden
    # @param id [String] Identifier of the resource
    # @param tax_id [String] identifier
    # @param update_order_tax_request [UpdateOrderTaxRequest] requested field for taxes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accept_language Use for knowing which language to use (default to 'es')
    # @option opts [String] :x_child_company_id In the case of a holding company, the company id of the child company to which will process the request.
    # @return [Array<(UpdateOrderTaxResponse, Integer, Hash)>] UpdateOrderTaxResponse data, response status code and response headers
    def orders_update_taxes_with_http_info(id, tax_id, update_order_tax_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaxesApi.orders_update_taxes ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxesApi.orders_update_taxes"
      end
      # verify the required parameter 'tax_id' is set
      if @api_client.config.client_side_validation && tax_id.nil?
        fail ArgumentError, "Missing the required parameter 'tax_id' when calling TaxesApi.orders_update_taxes"
      end
      # verify the required parameter 'update_order_tax_request' is set
      if @api_client.config.client_side_validation && update_order_tax_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_order_tax_request' when calling TaxesApi.orders_update_taxes"
      end
      allowable_values = ["es", "en"]
      if @api_client.config.client_side_validation && opts[:'accept_language'] && !allowable_values.include?(opts[:'accept_language'])
        fail ArgumentError, "invalid value for \"accept_language\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/orders/{id}/tax_lines/{tax_id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'tax_id' + '}', CGI.escape(tax_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_order_tax_request)

      # return_type
      return_type = opts[:debug_return_type] || 'UpdateOrderTaxResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TaxesApi.orders_update_taxes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#orders_update_taxes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
