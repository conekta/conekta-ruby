# Conekta::ShippingsApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**orders_create_shipping**](ShippingsApi.md#orders_create_shipping) | **POST** /orders/{id}/shipping_lines | Create Shipping |
| [**orders_delete_shipping**](ShippingsApi.md#orders_delete_shipping) | **DELETE** /orders/{id}/shipping_lines/{shipping_id} | Delete Shipping |
| [**orders_update_shipping**](ShippingsApi.md#orders_update_shipping) | **PUT** /orders/{id}/shipping_lines/{shipping_id} | Update Shipping |


## orders_create_shipping

> <ShippingOrderResponse> orders_create_shipping(id, shipping_request, opts)

Create Shipping

Create new shipping for an existing orden

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::ShippingsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
shipping_request = Conekta::ShippingRequest.new({amount: 100}) # ShippingRequest | requested field for a shipping
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create Shipping
  result = api_instance.orders_create_shipping(id, shipping_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling ShippingsApi->orders_create_shipping: #{e}"
end
```

#### Using the orders_create_shipping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShippingOrderResponse>, Integer, Hash)> orders_create_shipping_with_http_info(id, shipping_request, opts)

```ruby
begin
  # Create Shipping
  data, status_code, headers = api_instance.orders_create_shipping_with_http_info(id, shipping_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShippingOrderResponse>
rescue Conekta::ApiError => e
  puts "Error when calling ShippingsApi->orders_create_shipping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **shipping_request** | [**ShippingRequest**](ShippingRequest.md) | requested field for a shipping |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ShippingOrderResponse**](ShippingOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json


## orders_delete_shipping

> <ShippingOrderResponse> orders_delete_shipping(id, shipping_id, opts)

Delete Shipping

Delete shipping

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::ShippingsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
shipping_id = 'ship_lin_2tQ974hSHcsdeSZHG' # String | identifier
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Delete Shipping
  result = api_instance.orders_delete_shipping(id, shipping_id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling ShippingsApi->orders_delete_shipping: #{e}"
end
```

#### Using the orders_delete_shipping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShippingOrderResponse>, Integer, Hash)> orders_delete_shipping_with_http_info(id, shipping_id, opts)

```ruby
begin
  # Delete Shipping
  data, status_code, headers = api_instance.orders_delete_shipping_with_http_info(id, shipping_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShippingOrderResponse>
rescue Conekta::ApiError => e
  puts "Error when calling ShippingsApi->orders_delete_shipping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **shipping_id** | **String** | identifier |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ShippingOrderResponse**](ShippingOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## orders_update_shipping

> <ShippingOrderResponse> orders_update_shipping(id, shipping_id, shipping_request, opts)

Update Shipping

Update existing shipping for an existing orden

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::ShippingsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
shipping_id = 'ship_lin_2tQ974hSHcsdeSZHG' # String | identifier
shipping_request = Conekta::ShippingRequest.new({amount: 100}) # ShippingRequest | requested field for a shipping
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update Shipping
  result = api_instance.orders_update_shipping(id, shipping_id, shipping_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling ShippingsApi->orders_update_shipping: #{e}"
end
```

#### Using the orders_update_shipping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShippingOrderResponse>, Integer, Hash)> orders_update_shipping_with_http_info(id, shipping_id, shipping_request, opts)

```ruby
begin
  # Update Shipping
  data, status_code, headers = api_instance.orders_update_shipping_with_http_info(id, shipping_id, shipping_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShippingOrderResponse>
rescue Conekta::ApiError => e
  puts "Error when calling ShippingsApi->orders_update_shipping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **shipping_id** | **String** | identifier |  |
| **shipping_request** | [**ShippingRequest**](ShippingRequest.md) | requested field for a shipping |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ShippingOrderResponse**](ShippingOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json

