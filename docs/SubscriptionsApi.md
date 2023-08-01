# Conekta::SubscriptionsApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_subscription**](SubscriptionsApi.md#cancel_subscription) | **POST** /customers/{id}/subscription/cancel | Cancel Subscription |
| [**create_subscription**](SubscriptionsApi.md#create_subscription) | **POST** /customers/{id}/subscription | Create Subscription |
| [**get_all_events_from_subscription**](SubscriptionsApi.md#get_all_events_from_subscription) | **GET** /customers/{id}/subscription/events | Get Events By Subscription |
| [**get_subscription**](SubscriptionsApi.md#get_subscription) | **GET** /customers/{id}/subscription | Get Subscription |
| [**pause_subscription**](SubscriptionsApi.md#pause_subscription) | **POST** /customers/{id}/subscription/pause | Pause Subscription |
| [**resume_subscription**](SubscriptionsApi.md#resume_subscription) | **POST** /customers/{id}/subscription/resume | Resume Subscription |
| [**update_subscription**](SubscriptionsApi.md#update_subscription) | **PUT** /customers/{id}/subscription | Update Subscription |


## cancel_subscription

> <SubscriptionResponse> cancel_subscription(id, opts)

Cancel Subscription

You can cancel the subscription to stop the plans that your customers consume

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
  # Cancel Subscription
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
  # Cancel Subscription
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
- **Accept**: application/vnd.conekta-v2.1.0+json


## create_subscription

> <SubscriptionResponse> create_subscription(id, subscription_request, opts)

Create Subscription

You can create the subscription to include the plans that your customers consume

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
  # Create Subscription
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
  # Create Subscription
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
- **Accept**: application/vnd.conekta-v2.1.0+json


## get_all_events_from_subscription

> <SubscriptionEventsResponse> get_all_events_from_subscription(id, opts)

Get Events By Subscription

You can get the events of the subscription(s) of a client, with the customer id

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
  # Get Events By Subscription
  result = api_instance.get_all_events_from_subscription(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->get_all_events_from_subscription: #{e}"
end
```

#### Using the get_all_events_from_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionEventsResponse>, Integer, Hash)> get_all_events_from_subscription_with_http_info(id, opts)

```ruby
begin
  # Get Events By Subscription
  data, status_code, headers = api_instance.get_all_events_from_subscription_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionEventsResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsApi->get_all_events_from_subscription_with_http_info: #{e}"
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
- **Accept**: application/vnd.conekta-v2.1.0+json


## get_subscription

> <SubscriptionResponse> get_subscription(id, opts)

Get Subscription

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
  # Get Subscription
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
  # Get Subscription
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
- **Accept**: application/vnd.conekta-v2.1.0+json


## pause_subscription

> <SubscriptionResponse> pause_subscription(id, opts)

Pause Subscription

You can pause the subscription to stop the plans that your customers consume

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
  # Pause Subscription
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
  # Pause Subscription
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
- **Accept**: application/vnd.conekta-v2.1.0+json


## resume_subscription

> <SubscriptionResponse> resume_subscription(id, opts)

Resume Subscription

You can resume the subscription to start the plans that your customers consume

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
  # Resume Subscription
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
  # Resume Subscription
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
- **Accept**: application/vnd.conekta-v2.1.0+json


## update_subscription

> <SubscriptionResponse> update_subscription(id, subscription_update_request, opts)

Update Subscription

You can modify the subscription to change the plans that your customers consume

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
  # Update Subscription
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
  # Update Subscription
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
- **Accept**: application/vnd.conekta-v2.1.0+json

