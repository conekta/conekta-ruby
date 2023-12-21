# Conekta::ChargesApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_charges**](ChargesApi.md#get_charges) | **GET** /charges | Get A List of Charges |
| [**orders_create_charge**](ChargesApi.md#orders_create_charge) | **POST** /orders/{id}/charges | Create charge |
| [**update_charge**](ChargesApi.md#update_charge) | **PUT** /charges/{id} | Update a charge |


## get_charges

> <GetChargesResponse> get_charges(opts)

Get A List of Charges

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::ChargesApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get A List of Charges
  result = api_instance.get_charges(opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling ChargesApi->get_charges: #{e}"
end
```

#### Using the get_charges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChargesResponse>, Integer, Hash)> get_charges_with_http_info(opts)

```ruby
begin
  # Get A List of Charges
  data, status_code, headers = api_instance.get_charges_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChargesResponse>
rescue Conekta::ApiError => e
  puts "Error when calling ChargesApi->get_charges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |
| **limit** | **Integer** | The numbers of items to return, the maximum value is 250 | [optional][default to 20] |
| **search** | **String** | General order search, e.g. by mail, reference etc. | [optional] |
| **_next** | **String** | next page | [optional] |
| **previous** | **String** | previous page | [optional] |

### Return type

[**GetChargesResponse**](GetChargesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## orders_create_charge

> <ChargeOrderResponse> orders_create_charge(id, charge_request, opts)

Create charge

Create charge for an existing orden

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::ChargesApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
charge_request = Conekta::ChargeRequest.new({payment_method: Conekta::ChargeRequestPaymentMethod.new({type: 'card'})}) # ChargeRequest | requested field for a charge
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create charge
  result = api_instance.orders_create_charge(id, charge_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling ChargesApi->orders_create_charge: #{e}"
end
```

#### Using the orders_create_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeOrderResponse>, Integer, Hash)> orders_create_charge_with_http_info(id, charge_request, opts)

```ruby
begin
  # Create charge
  data, status_code, headers = api_instance.orders_create_charge_with_http_info(id, charge_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeOrderResponse>
rescue Conekta::ApiError => e
  puts "Error when calling ChargesApi->orders_create_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **charge_request** | [**ChargeRequest**](ChargeRequest.md) | requested field for a charge |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ChargeOrderResponse**](ChargeOrderResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.1.0+json


## update_charge

> <ChargeResponse> update_charge(id, charge_update_request, opts)

Update a charge

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::ChargesApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
charge_update_request = Conekta::ChargeUpdateRequest.new # ChargeUpdateRequest | requested field for update a charge
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update a charge
  result = api_instance.update_charge(id, charge_update_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling ChargesApi->update_charge: #{e}"
end
```

#### Using the update_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeResponse>, Integer, Hash)> update_charge_with_http_info(id, charge_update_request, opts)

```ruby
begin
  # Update a charge
  data, status_code, headers = api_instance.update_charge_with_http_info(id, charge_update_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeResponse>
rescue Conekta::ApiError => e
  puts "Error when calling ChargesApi->update_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **charge_update_request** | [**ChargeUpdateRequest**](ChargeUpdateRequest.md) | requested field for update a charge |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ChargeResponse**](ChargeResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.1.0+json

