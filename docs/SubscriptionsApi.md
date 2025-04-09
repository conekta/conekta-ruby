# Conekta::SubscriptionsApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_subscription**](SubscriptionsApi.md#cancel_subscription) | **POST** /customers/{id}/subscription/cancel | Cancel Subscription [Deprecated] |
| [**create_subscription**](SubscriptionsApi.md#create_subscription) | **POST** /customers/{id}/subscription | Create Subscription [Deprecated] |
| [**get_subscription**](SubscriptionsApi.md#get_subscription) | **GET** /customers/{id}/subscription | Get Subscription [Deprecated] |
| [**get_subscription_events**](SubscriptionsApi.md#get_subscription_events) | **GET** /customers/{id}/subscription/events | Get Subscription Events [Deprecated] |
| [**pause_subscription**](SubscriptionsApi.md#pause_subscription) | **POST** /customers/{id}/subscription/pause | Pause Subscription [Deprecated] |
| [**resume_subscription**](SubscriptionsApi.md#resume_subscription) | **POST** /customers/{id}/subscription/resume | Resume Subscription [Deprecated] |
| [**subscription_cancel**](SubscriptionsApi.md#subscription_cancel) | **POST** /customers/{customer_id}/subscriptions/{id}/cancel | Cancel Subscription |
| [**subscription_create**](SubscriptionsApi.md#subscription_create) | **POST** /customers/{customer_id}/subscriptions | Create Subscription |
| [**subscription_events**](SubscriptionsApi.md#subscription_events) | **GET** /customers/{customer_id}/subscriptions/{id}/events | Get Subscription Events |
| [**subscription_list**](SubscriptionsApi.md#subscription_list) | **GET** /customers/{customer_id}/subscriptions | List Subscriptions |
| [**subscription_pause**](SubscriptionsApi.md#subscription_pause) | **POST** /customers/{customer_id}/subscriptions/{id}/pause | Pause Subscription |
| [**subscription_resume**](SubscriptionsApi.md#subscription_resume) | **POST** /customers/{customer_id}/subscriptions/{id}/resume | Resume Subscription |
| [**subscription_update**](SubscriptionsApi.md#subscription_update) | **PUT** /customers/{customer_id}/subscriptions/{id} | Update Subscription |
| [**subscriptions_get**](SubscriptionsApi.md#subscriptions_get) | **GET** /customers/{customer_id}/subscriptions/{id} | Get Subscription |
| [**subscriptions_retry**](SubscriptionsApi.md#subscriptions_retry) | **POST** /customers/{customer_id}/subscriptions/{id}/retry | Retry Failed Payment |
| [**update_subscription**](SubscriptionsApi.md#update_subscription) | **PUT** /customers/{id}/subscription | Update Subscription [Deprecated] |


## cancel_subscription

> <SubscriptionResponse> cancel_subscription(id, opts)

Cancel Subscription [Deprecated]

DEPRECATED: This endpoint will be removed in version 2.3.0.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Cancel Subscription [Deprecated]
  result = api_instance.cancel_subscription(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->cancel_subscription: #{e}"
end
```

#### Using the cancel_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> cancel_subscription_with_http_info(id, opts)

```ruby
begin
  # Cancel Subscription [Deprecated]
  data, status_code, headers = api_instance.cancel_subscription_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->cancel_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## create_subscription

> <SubscriptionResponse> create_subscription(id, subscription_request, opts)

Create Subscription [Deprecated]

DEPRECATED: This endpoint will be removed in version 2.3.0. You can create the subscription to include the plans that your customers consume

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
subscription_request = Conekta::SubscriptionRequest.new({plan_id: 'f84gdgf5g48r15fd21g8w424fd1'}) # SubscriptionRequest | requested field for subscriptions
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create Subscription [Deprecated]
  result = api_instance.create_subscription(id, subscription_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->create_subscription: #{e}"
end
```

#### Using the create_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> create_subscription_with_http_info(id, subscription_request, opts)

```ruby
begin
  # Create Subscription [Deprecated]
  data, status_code, headers = api_instance.create_subscription_with_http_info(id, subscription_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->create_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **subscription_request** | [**SubscriptionRequest**](SubscriptionRequest.md) | requested field for subscriptions |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json


## get_subscription

> <SubscriptionResponse> get_subscription(id, opts)

Get Subscription [Deprecated]

DEPRECATED: This endpoint will be removed in version 2.3.0.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Get Subscription [Deprecated]
  result = api_instance.get_subscription(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription: #{e}"
end
```

#### Using the get_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> get_subscription_with_http_info(id, opts)

```ruby
begin
  # Get Subscription [Deprecated]
  data, status_code, headers = api_instance.get_subscription_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## get_subscription_events

> <SubscriptionEventsResponse> get_subscription_events(id, opts)

Get Subscription Events [Deprecated]

DEPRECATED: This endpoint will be removed in version 2.3.0. You can get the events of the subscription(s) of a client, with the customer id

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get Subscription Events [Deprecated]
  result = api_instance.get_subscription_events(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription_events: #{e}"
end
```

#### Using the get_subscription_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionEventsResponse>, Integer, Hash)> get_subscription_events_with_http_info(id, opts)

```ruby
begin
  # Get Subscription Events [Deprecated]
  data, status_code, headers = api_instance.get_subscription_events_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionEventsResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**SubscriptionEventsResponse**](SubscriptionEventsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## pause_subscription

> <SubscriptionResponse> pause_subscription(id, opts)

Pause Subscription [Deprecated]

DEPRECATED: This endpoint will be removed in version 2.3.0.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Pause Subscription [Deprecated]
  result = api_instance.pause_subscription(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->pause_subscription: #{e}"
end
```

#### Using the pause_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> pause_subscription_with_http_info(id, opts)

```ruby
begin
  # Pause Subscription [Deprecated]
  data, status_code, headers = api_instance.pause_subscription_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->pause_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## resume_subscription

> <SubscriptionResponse> resume_subscription(id, opts)

Resume Subscription [Deprecated]

DEPRECATED: This endpoint will be removed in version 2.3.0.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Resume Subscription [Deprecated]
  result = api_instance.resume_subscription(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->resume_subscription: #{e}"
end
```

#### Using the resume_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> resume_subscription_with_http_info(id, opts)

```ruby
begin
  # Resume Subscription [Deprecated]
  data, status_code, headers = api_instance.resume_subscription_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->resume_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## subscription_cancel

> <SubscriptionResponse> subscription_cancel(customer_id, id, opts)

Cancel Subscription

Cancel a specific subscription

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
customer_id = 'cus_2tGzG1GxtDAZHEGPH' # String | Identifier of the customer resource
id = 'sub_2tGzG1GxtDAZHEGPH' # String | Identifier of the subscription resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Cancel Subscription
  result = api_instance.subscription_cancel(customer_id, id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscription_cancel: #{e}"
end
```

#### Using the subscription_cancel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> subscription_cancel_with_http_info(customer_id, id, opts)

```ruby
begin
  # Cancel Subscription
  data, status_code, headers = api_instance.subscription_cancel_with_http_info(customer_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscription_cancel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Identifier of the customer resource |  |
| **id** | **String** | Identifier of the subscription resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## subscription_create

> <SubscriptionResponse> subscription_create(customer_id, subscription_request, opts)

Create Subscription

Create a new subscription for a customer (keeps existing subscriptions active)

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
customer_id = 'cus_2tGzG1GxtDAZHEGPH' # String | Identifier of the customer resource
subscription_request = Conekta::SubscriptionRequest.new({plan_id: 'f84gdgf5g48r15fd21g8w424fd1'}) # SubscriptionRequest | requested field for subscriptions
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create Subscription
  result = api_instance.subscription_create(customer_id, subscription_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscription_create: #{e}"
end
```

#### Using the subscription_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> subscription_create_with_http_info(customer_id, subscription_request, opts)

```ruby
begin
  # Create Subscription
  data, status_code, headers = api_instance.subscription_create_with_http_info(customer_id, subscription_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscription_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Identifier of the customer resource |  |
| **subscription_request** | [**SubscriptionRequest**](SubscriptionRequest.md) | requested field for subscriptions |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json


## subscription_events

> <SubscriptionEventsResponse> subscription_events(customer_id, id, opts)

Get Subscription Events

Get events for a specific subscription

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
customer_id = 'cus_2tGzG1GxtDAZHEGPH' # String | Identifier of the customer resource
id = 'sub_2tGzG1GxtDAZHEGPH' # String | Identifier of the subscription resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get Subscription Events
  result = api_instance.subscription_events(customer_id, id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscription_events: #{e}"
end
```

#### Using the subscription_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionEventsResponse>, Integer, Hash)> subscription_events_with_http_info(customer_id, id, opts)

```ruby
begin
  # Get Subscription Events
  data, status_code, headers = api_instance.subscription_events_with_http_info(customer_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionEventsResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscription_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Identifier of the customer resource |  |
| **id** | **String** | Identifier of the subscription resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |
| **limit** | **Integer** | The numbers of items to return, the maximum value is 250 | [optional][default to 20] |
| **search** | **String** | General order search, e.g. by mail, reference etc. | [optional] |
| **_next** | **String** | next page | [optional] |
| **previous** | **String** | previous page | [optional] |

### Return type

[**SubscriptionEventsResponse**](SubscriptionEventsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## subscription_list

> <SubscriptionResponse> subscription_list(customer_id, opts)

List Subscriptions

Get a list of subscriptions for a customer

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
customer_id = 'cus_2tGzG1GxtDAZHEGPH' # String | Identifier of the customer resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # List Subscriptions
  result = api_instance.subscription_list(customer_id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscription_list: #{e}"
end
```

#### Using the subscription_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> subscription_list_with_http_info(customer_id, opts)

```ruby
begin
  # List Subscriptions
  data, status_code, headers = api_instance.subscription_list_with_http_info(customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscription_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Identifier of the customer resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |
| **limit** | **Integer** | The numbers of items to return, the maximum value is 250 | [optional][default to 20] |
| **search** | **String** | General order search, e.g. by mail, reference etc. | [optional] |
| **_next** | **String** | next page | [optional] |
| **previous** | **String** | previous page | [optional] |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## subscription_pause

> <SubscriptionResponse> subscription_pause(customer_id, id, opts)

Pause Subscription

Pause a specific subscription

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
customer_id = 'cus_2tGzG1GxtDAZHEGPH' # String | Identifier of the customer resource
id = 'sub_2tGzG1GxtDAZHEGPH' # String | Identifier of the subscription resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Pause Subscription
  result = api_instance.subscription_pause(customer_id, id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscription_pause: #{e}"
end
```

#### Using the subscription_pause_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> subscription_pause_with_http_info(customer_id, id, opts)

```ruby
begin
  # Pause Subscription
  data, status_code, headers = api_instance.subscription_pause_with_http_info(customer_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscription_pause_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Identifier of the customer resource |  |
| **id** | **String** | Identifier of the subscription resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## subscription_resume

> <SubscriptionResponse> subscription_resume(customer_id, id, opts)

Resume Subscription

Resume a specific paused subscription

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
customer_id = 'cus_2tGzG1GxtDAZHEGPH' # String | Identifier of the customer resource
id = 'sub_2tGzG1GxtDAZHEGPH' # String | Identifier of the subscription resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Resume Subscription
  result = api_instance.subscription_resume(customer_id, id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscription_resume: #{e}"
end
```

#### Using the subscription_resume_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> subscription_resume_with_http_info(customer_id, id, opts)

```ruby
begin
  # Resume Subscription
  data, status_code, headers = api_instance.subscription_resume_with_http_info(customer_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscription_resume_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Identifier of the customer resource |  |
| **id** | **String** | Identifier of the subscription resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## subscription_update

> <SubscriptionResponse> subscription_update(customer_id, id, subscription_update_request, opts)

Update Subscription

Update a specific subscription

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
customer_id = 'cus_2tGzG1GxtDAZHEGPH' # String | Identifier of the customer resource
id = 'sub_2tGzG1GxtDAZHEGPH' # String | Identifier of the subscription resource
subscription_update_request = Conekta::SubscriptionUpdateRequest.new # SubscriptionUpdateRequest | requested field for update a subscription
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update Subscription
  result = api_instance.subscription_update(customer_id, id, subscription_update_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscription_update: #{e}"
end
```

#### Using the subscription_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> subscription_update_with_http_info(customer_id, id, subscription_update_request, opts)

```ruby
begin
  # Update Subscription
  data, status_code, headers = api_instance.subscription_update_with_http_info(customer_id, id, subscription_update_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscription_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Identifier of the customer resource |  |
| **id** | **String** | Identifier of the subscription resource |  |
| **subscription_update_request** | [**SubscriptionUpdateRequest**](SubscriptionUpdateRequest.md) | requested field for update a subscription |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json


## subscriptions_get

> <SubscriptionResponse> subscriptions_get(customer_id, id, opts)

Get Subscription

Retrieve a specific subscription

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
customer_id = 'cus_2tGzG1GxtDAZHEGPH' # String | Identifier of the customer resource
id = 'sub_2tGzG1GxtDAZHEGPH' # String | Identifier of the subscription resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get Subscription
  result = api_instance.subscriptions_get(customer_id, id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscriptions_get: #{e}"
end
```

#### Using the subscriptions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> subscriptions_get_with_http_info(customer_id, id, opts)

```ruby
begin
  # Get Subscription
  data, status_code, headers = api_instance.subscriptions_get_with_http_info(customer_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscriptions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Identifier of the customer resource |  |
| **id** | **String** | Identifier of the subscription resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## subscriptions_retry

> <SubscriptionResponse> subscriptions_retry(customer_id, id, opts)

Retry Failed Payment

Retry a failed payment for a specific subscription

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
customer_id = 'cus_2tGzG1GxtDAZHEGPH' # String | Identifier of the customer resource
id = 'sub_2tGzG1GxtDAZHEGPH' # String | Identifier of the subscription resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Retry Failed Payment
  result = api_instance.subscriptions_retry(customer_id, id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscriptions_retry: #{e}"
end
```

#### Using the subscriptions_retry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> subscriptions_retry_with_http_info(customer_id, id, opts)

```ruby
begin
  # Retry Failed Payment
  data, status_code, headers = api_instance.subscriptions_retry_with_http_info(customer_id, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->subscriptions_retry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Identifier of the customer resource |  |
| **id** | **String** | Identifier of the subscription resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## update_subscription

> <SubscriptionResponse> update_subscription(id, subscription_update_request, opts)

Update Subscription [Deprecated]

DEPRECATED: This endpoint will be removed in version 2.3.0. You can modify the subscription to change the plans that your customers consume

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
subscription_update_request = Conekta::SubscriptionUpdateRequest.new # SubscriptionUpdateRequest | requested field for update a subscription
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update Subscription [Deprecated]
  result = api_instance.update_subscription(id, subscription_update_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->update_subscription: #{e}"
end
```

#### Using the update_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> update_subscription_with_http_info(id, subscription_update_request, opts)

```ruby
begin
  # Update Subscription [Deprecated]
  data, status_code, headers = api_instance.update_subscription_with_http_info(id, subscription_update_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->update_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **subscription_update_request** | [**SubscriptionUpdateRequest**](SubscriptionUpdateRequest.md) | requested field for update a subscription |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json

