# Conekta::PaymentMethodsApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer_payment_methods**](PaymentMethodsApi.md#create_customer_payment_methods) | **POST** /customers/{id}/payment_sources | Create Payment Method |
| [**delete_customer_payment_methods**](PaymentMethodsApi.md#delete_customer_payment_methods) | **DELETE** /customers/{id}/payment_sources/{payment_method_id} | Delete Payment Method |
| [**get_customer_payment_methods**](PaymentMethodsApi.md#get_customer_payment_methods) | **GET** /customers/{id}/payment_sources | Get Payment Methods |
| [**update_customer_payment_methods**](PaymentMethodsApi.md#update_customer_payment_methods) | **PUT** /customers/{id}/payment_sources/{payment_method_id} | Update Payment Method |


## create_customer_payment_methods

> <CreateCustomerPaymentMethodsResponse> create_customer_payment_methods(id, create_customer_payment_methods_request, opts)

Create Payment Method

Create a payment method for a customer.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PaymentMethodsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
create_customer_payment_methods_request = Conekta::PaymentMethodCardRequest.new({type: 'card | cash | spei', token_id: 'tok_32hj4g234as'}) # CreateCustomerPaymentMethodsRequest | requested field for customer payment methods
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create Payment Method
  result = api_instance.create_customer_payment_methods(id, create_customer_payment_methods_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PaymentMethodsApi->create_customer_payment_methods: #{e}"
end
```

#### Using the create_customer_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomerPaymentMethodsResponse>, Integer, Hash)> create_customer_payment_methods_with_http_info(id, create_customer_payment_methods_request, opts)

```ruby
begin
  # Create Payment Method
  data, status_code, headers = api_instance.create_customer_payment_methods_with_http_info(id, create_customer_payment_methods_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomerPaymentMethodsResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PaymentMethodsApi->create_customer_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **create_customer_payment_methods_request** | [**CreateCustomerPaymentMethodsRequest**](CreateCustomerPaymentMethodsRequest.md) | requested field for customer payment methods |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CreateCustomerPaymentMethodsResponse**](CreateCustomerPaymentMethodsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.1.0+json


## delete_customer_payment_methods

> <UpdateCustomerPaymentMethodsResponse> delete_customer_payment_methods(id, payment_method_id, opts)

Delete Payment Method

Delete an existing payment method

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PaymentMethodsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
payment_method_id = 'src_2tQ974hSHcsdeSZHG' # String | Identifier of the payment method
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Delete Payment Method
  result = api_instance.delete_customer_payment_methods(id, payment_method_id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PaymentMethodsApi->delete_customer_payment_methods: #{e}"
end
```

#### Using the delete_customer_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateCustomerPaymentMethodsResponse>, Integer, Hash)> delete_customer_payment_methods_with_http_info(id, payment_method_id, opts)

```ruby
begin
  # Delete Payment Method
  data, status_code, headers = api_instance.delete_customer_payment_methods_with_http_info(id, payment_method_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateCustomerPaymentMethodsResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PaymentMethodsApi->delete_customer_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **payment_method_id** | **String** | Identifier of the payment method |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**UpdateCustomerPaymentMethodsResponse**](UpdateCustomerPaymentMethodsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## get_customer_payment_methods

> <GetPaymentMethodResponse> get_customer_payment_methods(id, opts)

Get Payment Methods

Get a list of Payment Methods

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PaymentMethodsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  _next: '_next_example', # String | next page
  previous: 'previous_example', # String | previous page
  search: 'search_example' # String | General order search, e.g. by mail, reference etc.
}

begin
  # Get Payment Methods
  result = api_instance.get_customer_payment_methods(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_customer_payment_methods: #{e}"
end
```

#### Using the get_customer_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPaymentMethodResponse>, Integer, Hash)> get_customer_payment_methods_with_http_info(id, opts)

```ruby
begin
  # Get Payment Methods
  data, status_code, headers = api_instance.get_customer_payment_methods_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPaymentMethodResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_customer_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |
| **limit** | **Integer** | The numbers of items to return, the maximum value is 250 | [optional][default to 20] |
| **_next** | **String** | next page | [optional] |
| **previous** | **String** | previous page | [optional] |
| **search** | **String** | General order search, e.g. by mail, reference etc. | [optional] |

### Return type

[**GetPaymentMethodResponse**](GetPaymentMethodResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## update_customer_payment_methods

> <UpdateCustomerPaymentMethodsResponse> update_customer_payment_methods(id, payment_method_id, update_payment_methods, opts)

Update Payment Method

Gets a payment Method that corresponds to a customer ID.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PaymentMethodsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
payment_method_id = 'src_2tQ974hSHcsdeSZHG' # String | Identifier of the payment method
update_payment_methods = Conekta::UpdatePaymentMethods.new # UpdatePaymentMethods | requested field for customer payment methods
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update Payment Method
  result = api_instance.update_customer_payment_methods(id, payment_method_id, update_payment_methods, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_customer_payment_methods: #{e}"
end
```

#### Using the update_customer_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateCustomerPaymentMethodsResponse>, Integer, Hash)> update_customer_payment_methods_with_http_info(id, payment_method_id, update_payment_methods, opts)

```ruby
begin
  # Update Payment Method
  data, status_code, headers = api_instance.update_customer_payment_methods_with_http_info(id, payment_method_id, update_payment_methods, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateCustomerPaymentMethodsResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_customer_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **payment_method_id** | **String** | Identifier of the payment method |  |
| **update_payment_methods** | [**UpdatePaymentMethods**](UpdatePaymentMethods.md) | requested field for customer payment methods |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**UpdateCustomerPaymentMethodsResponse**](UpdateCustomerPaymentMethodsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.1.0+json

