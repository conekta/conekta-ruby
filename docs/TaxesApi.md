# Conekta::TaxesApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**orders_create_taxes**](TaxesApi.md#orders_create_taxes) | **POST** /orders/{id}/tax_lines | Create Tax |
| [**orders_delete_taxes**](TaxesApi.md#orders_delete_taxes) | **DELETE** /orders/{id}/tax_lines/{tax_id} | Delete Tax |
| [**orders_update_taxes**](TaxesApi.md#orders_update_taxes) | **PUT** /orders/{id}/tax_lines/{tax_id} | Update Tax |


## orders_create_taxes

> <UpdateOrderTaxResponse> orders_create_taxes(id, order_tax_request, opts)

Create Tax

Create new taxes for an existing orden

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::TaxesApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
order_tax_request = Conekta::OrderTaxRequest.new({amount: 100, description: 'testing'}) # OrderTaxRequest | requested field for a taxes
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create Tax
  result = api_instance.orders_create_taxes(id, order_tax_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling TaxesApi->orders_create_taxes: #{e}"
end
```

#### Using the orders_create_taxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateOrderTaxResponse>, Integer, Hash)> orders_create_taxes_with_http_info(id, order_tax_request, opts)

```ruby
begin
  # Create Tax
  data, status_code, headers = api_instance.orders_create_taxes_with_http_info(id, order_tax_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateOrderTaxResponse>
rescue Conekta::ApiError => e
  puts "Error when calling TaxesApi->orders_create_taxes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **order_tax_request** | [**OrderTaxRequest**](OrderTaxRequest.md) | requested field for a taxes |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**UpdateOrderTaxResponse**](UpdateOrderTaxResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.1.0+json


## orders_delete_taxes

> <UpdateOrderTaxResponse> orders_delete_taxes(id, tax_id, opts)

Delete Tax

Delete taxes for an existing orden

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::TaxesApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
tax_id = 'tax_lin_2tQ974hSHcsdeSZHG' # String | identifier
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Delete Tax
  result = api_instance.orders_delete_taxes(id, tax_id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling TaxesApi->orders_delete_taxes: #{e}"
end
```

#### Using the orders_delete_taxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateOrderTaxResponse>, Integer, Hash)> orders_delete_taxes_with_http_info(id, tax_id, opts)

```ruby
begin
  # Delete Tax
  data, status_code, headers = api_instance.orders_delete_taxes_with_http_info(id, tax_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateOrderTaxResponse>
rescue Conekta::ApiError => e
  puts "Error when calling TaxesApi->orders_delete_taxes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **tax_id** | **String** | identifier |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**UpdateOrderTaxResponse**](UpdateOrderTaxResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## orders_update_taxes

> <UpdateOrderTaxResponse> orders_update_taxes(id, tax_id, update_order_tax_request, opts)

Update Tax

Update taxes for an existing orden

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::TaxesApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
tax_id = 'tax_lin_2tQ974hSHcsdeSZHG' # String | identifier
update_order_tax_request = Conekta::UpdateOrderTaxRequest.new # UpdateOrderTaxRequest | requested field for taxes
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update Tax
  result = api_instance.orders_update_taxes(id, tax_id, update_order_tax_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling TaxesApi->orders_update_taxes: #{e}"
end
```

#### Using the orders_update_taxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateOrderTaxResponse>, Integer, Hash)> orders_update_taxes_with_http_info(id, tax_id, update_order_tax_request, opts)

```ruby
begin
  # Update Tax
  data, status_code, headers = api_instance.orders_update_taxes_with_http_info(id, tax_id, update_order_tax_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateOrderTaxResponse>
rescue Conekta::ApiError => e
  puts "Error when calling TaxesApi->orders_update_taxes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **tax_id** | **String** | identifier |  |
| **update_order_tax_request** | [**UpdateOrderTaxRequest**](UpdateOrderTaxRequest.md) | requested field for taxes |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**UpdateOrderTaxResponse**](UpdateOrderTaxResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.1.0+json

