# Conekta::PayoutOrdersApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_payout_order_by_id**](PayoutOrdersApi.md#cancel_payout_order_by_id) | **PUT** /payout_orders/{id}/cancel | Cancel Payout Order |
| [**create_payout_order**](PayoutOrdersApi.md#create_payout_order) | **POST** /payout_orders | Create payout order |
| [**get_payout_order_by_id**](PayoutOrdersApi.md#get_payout_order_by_id) | **GET** /payout_orders/{id} | Get Payout Order |
| [**get_payout_orders**](PayoutOrdersApi.md#get_payout_orders) | **GET** /payout_orders | Get a list of Payout Orders |


## cancel_payout_order_by_id

> <PayoutOrderResponse> cancel_payout_order_by_id(id, opts)

Cancel Payout Order

Cancel a payout Order resource that corresponds to a payout order ID.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PayoutOrdersApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Cancel Payout Order
  result = api_instance.cancel_payout_order_by_id(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PayoutOrdersApi->cancel_payout_order_by_id: #{e}"
end
```

#### Using the cancel_payout_order_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutOrderResponse>, Integer, Hash)> cancel_payout_order_by_id_with_http_info(id, opts)

```ruby
begin
  # Cancel Payout Order
  data, status_code, headers = api_instance.cancel_payout_order_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutOrderResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PayoutOrdersApi->cancel_payout_order_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**PayoutOrderResponse**](PayoutOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## create_payout_order

> <PayoutOrderResponse> create_payout_order(payout_order, opts)

Create payout order

Create a new payout order.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PayoutOrdersApi.new
payout_order = Conekta::PayoutOrder.new({allowed_payout_methods: ["cashout"], amount: 100, currency: 'MXN', customer_info: Conekta::CustomerInfoJustCustomerId.new({customer_id: 'cus_23874283647'}), payout: Conekta::Payout.new({payout_method: Conekta::PayoutMethod.new({type: 'cashout'})}), reason: 'Payout order for the customer'}) # PayoutOrder | requested field for payout order
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Create payout order
  result = api_instance.create_payout_order(payout_order, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PayoutOrdersApi->create_payout_order: #{e}"
end
```

#### Using the create_payout_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutOrderResponse>, Integer, Hash)> create_payout_order_with_http_info(payout_order, opts)

```ruby
begin
  # Create payout order
  data, status_code, headers = api_instance.create_payout_order_with_http_info(payout_order, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutOrderResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PayoutOrdersApi->create_payout_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_order** | [**PayoutOrder**](PayoutOrder.md) | requested field for payout order |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**PayoutOrderResponse**](PayoutOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json


## get_payout_order_by_id

> <PayoutOrderResponse> get_payout_order_by_id(id, opts)

Get Payout Order

Gets a payout Order resource that corresponds to a payout order ID.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PayoutOrdersApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Get Payout Order
  result = api_instance.get_payout_order_by_id(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PayoutOrdersApi->get_payout_order_by_id: #{e}"
end
```

#### Using the get_payout_order_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutOrderResponse>, Integer, Hash)> get_payout_order_by_id_with_http_info(id, opts)

```ruby
begin
  # Get Payout Order
  data, status_code, headers = api_instance.get_payout_order_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutOrderResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PayoutOrdersApi->get_payout_order_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**PayoutOrderResponse**](PayoutOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## get_payout_orders

> <PayoutOrdersResponse> get_payout_orders(opts)

Get a list of Payout Orders

Get Payout order details in the form of a list

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PayoutOrdersApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get a list of Payout Orders
  result = api_instance.get_payout_orders(opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PayoutOrdersApi->get_payout_orders: #{e}"
end
```

#### Using the get_payout_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutOrdersResponse>, Integer, Hash)> get_payout_orders_with_http_info(opts)

```ruby
begin
  # Get a list of Payout Orders
  data, status_code, headers = api_instance.get_payout_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutOrdersResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PayoutOrdersApi->get_payout_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **limit** | **Integer** | The numbers of items to return, the maximum value is 250 | [optional][default to 20] |
| **search** | **String** | General order search, e.g. by mail, reference etc. | [optional] |
| **_next** | **String** | next page | [optional] |
| **previous** | **String** | previous page | [optional] |

### Return type

[**PayoutOrdersResponse**](PayoutOrdersResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json

