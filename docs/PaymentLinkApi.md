# Conekta::PaymentLinkApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_checkout**](PaymentLinkApi.md#cancel_checkout) | **PUT** /checkouts/{id}/cancel | Cancel Payment Link |
| [**create_checkout**](PaymentLinkApi.md#create_checkout) | **POST** /checkouts | Create Unique Payment Link |
| [**email_checkout**](PaymentLinkApi.md#email_checkout) | **POST** /checkouts/{id}/email | Send an email |
| [**get_checkout**](PaymentLinkApi.md#get_checkout) | **GET** /checkouts/{id} | Get a payment link by ID |
| [**get_checkouts**](PaymentLinkApi.md#get_checkouts) | **GET** /checkouts | Get a list of payment links |
| [**sms_checkout**](PaymentLinkApi.md#sms_checkout) | **POST** /checkouts/{id}/sms | Send an sms |


## cancel_checkout

> <CheckoutResponse> cancel_checkout(id, opts)

Cancel Payment Link

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PaymentLinkApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Cancel Payment Link
  result = api_instance.cancel_checkout(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PaymentLinkApi->cancel_checkout: #{e}"
end
```

#### Using the cancel_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutResponse>, Integer, Hash)> cancel_checkout_with_http_info(id, opts)

```ruby
begin
  # Cancel Payment Link
  data, status_code, headers = api_instance.cancel_checkout_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PaymentLinkApi->cancel_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## create_checkout

> <CheckoutResponse> create_checkout(checkout, opts)

Create Unique Payment Link

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PaymentLinkApi.new
checkout = Conekta::Checkout.new({allowed_payment_methods: ["cash", "card", "bank_transfer", "bnpl"], expires_at: 1680397724, name: 'Payment Link Name 1594138857', order_template: Conekta::CheckoutOrderTemplate.new({currency: 'MXN', line_items: [Conekta::Product.new({name: 'Box of Cohiba S1s', quantity: 1, unit_price: 20000})]}), recurrent: false, type: 'PaymentLink'}) # Checkout | requested field for checkout
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create Unique Payment Link
  result = api_instance.create_checkout(checkout, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PaymentLinkApi->create_checkout: #{e}"
end
```

#### Using the create_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutResponse>, Integer, Hash)> create_checkout_with_http_info(checkout, opts)

```ruby
begin
  # Create Unique Payment Link
  data, status_code, headers = api_instance.create_checkout_with_http_info(checkout, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PaymentLinkApi->create_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout** | [**Checkout**](Checkout.md) | requested field for checkout |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json


## email_checkout

> <CheckoutResponse> email_checkout(id, email_checkout_request, opts)

Send an email

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PaymentLinkApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
email_checkout_request = Conekta::EmailCheckoutRequest.new({email: 'example@conekta.com'}) # EmailCheckoutRequest | requested field for sms checkout
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Send an email
  result = api_instance.email_checkout(id, email_checkout_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PaymentLinkApi->email_checkout: #{e}"
end
```

#### Using the email_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutResponse>, Integer, Hash)> email_checkout_with_http_info(id, email_checkout_request, opts)

```ruby
begin
  # Send an email
  data, status_code, headers = api_instance.email_checkout_with_http_info(id, email_checkout_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PaymentLinkApi->email_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **email_checkout_request** | [**EmailCheckoutRequest**](EmailCheckoutRequest.md) | requested field for sms checkout |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json


## get_checkout

> <CheckoutResponse> get_checkout(id, opts)

Get a payment link by ID

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PaymentLinkApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get a payment link by ID
  result = api_instance.get_checkout(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PaymentLinkApi->get_checkout: #{e}"
end
```

#### Using the get_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutResponse>, Integer, Hash)> get_checkout_with_http_info(id, opts)

```ruby
begin
  # Get a payment link by ID
  data, status_code, headers = api_instance.get_checkout_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PaymentLinkApi->get_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## get_checkouts

> <CheckoutsResponse> get_checkouts(opts)

Get a list of payment links

Returns a list of links generated by the merchant

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PaymentLinkApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get a list of payment links
  result = api_instance.get_checkouts(opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PaymentLinkApi->get_checkouts: #{e}"
end
```

#### Using the get_checkouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutsResponse>, Integer, Hash)> get_checkouts_with_http_info(opts)

```ruby
begin
  # Get a list of payment links
  data, status_code, headers = api_instance.get_checkouts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutsResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PaymentLinkApi->get_checkouts_with_http_info: #{e}"
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

[**CheckoutsResponse**](CheckoutsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## sms_checkout

> <CheckoutResponse> sms_checkout(id, sms_checkout_request, opts)

Send an sms

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PaymentLinkApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
sms_checkout_request = Conekta::SmsCheckoutRequest.new({phonenumber: '5566982090'}) # SmsCheckoutRequest | requested field for sms checkout
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Send an sms
  result = api_instance.sms_checkout(id, sms_checkout_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PaymentLinkApi->sms_checkout: #{e}"
end
```

#### Using the sms_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutResponse>, Integer, Hash)> sms_checkout_with_http_info(id, sms_checkout_request, opts)

```ruby
begin
  # Send an sms
  data, status_code, headers = api_instance.sms_checkout_with_http_info(id, sms_checkout_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PaymentLinkApi->sms_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **sms_checkout_request** | [**SmsCheckoutRequest**](SmsCheckoutRequest.md) | requested field for sms checkout |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CheckoutResponse**](CheckoutResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json

