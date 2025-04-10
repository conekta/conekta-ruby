# Conekta::DiscountsApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**orders_create_discount_line**](DiscountsApi.md#orders_create_discount_line) | **POST** /orders/{id}/discount_lines | Create Discount |
| [**orders_delete_discount_lines**](DiscountsApi.md#orders_delete_discount_lines) | **DELETE** /orders/{id}/discount_lines/{discount_lines_id} | Delete Discount |
| [**orders_get_discount_line**](DiscountsApi.md#orders_get_discount_line) | **GET** /orders/{id}/discount_lines/{discount_lines_id} | Get Discount |
| [**orders_get_discount_lines**](DiscountsApi.md#orders_get_discount_lines) | **GET** /orders/{id}/discount_lines | Get a List of Discount |
| [**orders_update_discount_lines**](DiscountsApi.md#orders_update_discount_lines) | **PUT** /orders/{id}/discount_lines/{discount_lines_id} | Update Discount |


## orders_create_discount_line

> <DiscountLinesResponse> orders_create_discount_line(id, order_discount_lines_request, opts)

Create Discount

Create discount lines for an existing orden

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::DiscountsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
order_discount_lines_request = Conekta::OrderDiscountLinesRequest.new({amount: 500, code: '123', type: 'loyalty'}) # OrderDiscountLinesRequest | requested field for a discount lines
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create Discount
  result = api_instance.orders_create_discount_line(id, order_discount_lines_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling DiscountsApi->orders_create_discount_line: #{e}"
end
```

#### Using the orders_create_discount_line_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiscountLinesResponse>, Integer, Hash)> orders_create_discount_line_with_http_info(id, order_discount_lines_request, opts)

```ruby
begin
  # Create Discount
  data, status_code, headers = api_instance.orders_create_discount_line_with_http_info(id, order_discount_lines_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiscountLinesResponse>
rescue Conekta::ApiError => e
  puts "Error when calling DiscountsApi->orders_create_discount_line_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **order_discount_lines_request** | [**OrderDiscountLinesRequest**](OrderDiscountLinesRequest.md) | requested field for a discount lines |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**DiscountLinesResponse**](DiscountLinesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json


## orders_delete_discount_lines

> <DiscountLinesResponse> orders_delete_discount_lines(id, discount_lines_id, opts)

Delete Discount

Delete an existing discount lines for an existing orden

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::DiscountsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
discount_lines_id = 'dis_lin_2tQ974hSHcsdeSZHG' # String | discount line id identifier
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Delete Discount
  result = api_instance.orders_delete_discount_lines(id, discount_lines_id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling DiscountsApi->orders_delete_discount_lines: #{e}"
end
```

#### Using the orders_delete_discount_lines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiscountLinesResponse>, Integer, Hash)> orders_delete_discount_lines_with_http_info(id, discount_lines_id, opts)

```ruby
begin
  # Delete Discount
  data, status_code, headers = api_instance.orders_delete_discount_lines_with_http_info(id, discount_lines_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiscountLinesResponse>
rescue Conekta::ApiError => e
  puts "Error when calling DiscountsApi->orders_delete_discount_lines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **discount_lines_id** | **String** | discount line id identifier |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**DiscountLinesResponse**](DiscountLinesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## orders_get_discount_line

> <DiscountLinesResponse> orders_get_discount_line(id, discount_lines_id, opts)

Get Discount

Get an existing discount lines for an existing orden

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::DiscountsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
discount_lines_id = 'dis_lin_2tQ974hSHcsdeSZHG' # String | discount line id identifier
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get Discount
  result = api_instance.orders_get_discount_line(id, discount_lines_id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling DiscountsApi->orders_get_discount_line: #{e}"
end
```

#### Using the orders_get_discount_line_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiscountLinesResponse>, Integer, Hash)> orders_get_discount_line_with_http_info(id, discount_lines_id, opts)

```ruby
begin
  # Get Discount
  data, status_code, headers = api_instance.orders_get_discount_line_with_http_info(id, discount_lines_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiscountLinesResponse>
rescue Conekta::ApiError => e
  puts "Error when calling DiscountsApi->orders_get_discount_line_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **discount_lines_id** | **String** | discount line id identifier |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**DiscountLinesResponse**](DiscountLinesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## orders_get_discount_lines

> <GetOrderDiscountLinesResponse> orders_get_discount_lines(id, opts)

Get a List of Discount

Get discount lines for an existing orden

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::DiscountsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get a List of Discount
  result = api_instance.orders_get_discount_lines(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling DiscountsApi->orders_get_discount_lines: #{e}"
end
```

#### Using the orders_get_discount_lines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrderDiscountLinesResponse>, Integer, Hash)> orders_get_discount_lines_with_http_info(id, opts)

```ruby
begin
  # Get a List of Discount
  data, status_code, headers = api_instance.orders_get_discount_lines_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrderDiscountLinesResponse>
rescue Conekta::ApiError => e
  puts "Error when calling DiscountsApi->orders_get_discount_lines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |
| **limit** | **Integer** | The numbers of items to return, the maximum value is 250 | [optional][default to 20] |
| **search** | **String** | General order search, e.g. by mail, reference etc. | [optional] |
| **_next** | **String** | next page | [optional] |
| **previous** | **String** | previous page | [optional] |

### Return type

[**GetOrderDiscountLinesResponse**](GetOrderDiscountLinesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## orders_update_discount_lines

> <DiscountLinesResponse> orders_update_discount_lines(id, discount_lines_id, update_order_discount_lines_request, opts)

Update Discount

Update an existing discount lines for an existing orden

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::DiscountsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
discount_lines_id = 'dis_lin_2tQ974hSHcsdeSZHG' # String | discount line id identifier
update_order_discount_lines_request = Conekta::UpdateOrderDiscountLinesRequest.new # UpdateOrderDiscountLinesRequest | requested field for a discount lines
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update Discount
  result = api_instance.orders_update_discount_lines(id, discount_lines_id, update_order_discount_lines_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling DiscountsApi->orders_update_discount_lines: #{e}"
end
```

#### Using the orders_update_discount_lines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiscountLinesResponse>, Integer, Hash)> orders_update_discount_lines_with_http_info(id, discount_lines_id, update_order_discount_lines_request, opts)

```ruby
begin
  # Update Discount
  data, status_code, headers = api_instance.orders_update_discount_lines_with_http_info(id, discount_lines_id, update_order_discount_lines_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiscountLinesResponse>
rescue Conekta::ApiError => e
  puts "Error when calling DiscountsApi->orders_update_discount_lines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **discount_lines_id** | **String** | discount line id identifier |  |
| **update_order_discount_lines_request** | [**UpdateOrderDiscountLinesRequest**](UpdateOrderDiscountLinesRequest.md) | requested field for a discount lines |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**DiscountLinesResponse**](DiscountLinesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json

