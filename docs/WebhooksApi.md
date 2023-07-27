# Conekta::WebhooksApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /webhooks | Create Webhook |
| [**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{id} | Delete Webhook |
| [**get_webhook**](WebhooksApi.md#get_webhook) | **GET** /webhooks/{id} | Get Webhook |
| [**get_webhooks**](WebhooksApi.md#get_webhooks) | **GET** /webhooks | Get List of Webhooks |
| [**test_webhook**](WebhooksApi.md#test_webhook) | **POST** /webhooks/{id}/test | Test Webhook |
| [**update_webhook**](WebhooksApi.md#update_webhook) | **PUT** /webhooks/{id} | Update Webhook |


## create_webhook

> <WebhookResponse> create_webhook(webhook_request, opts)

Create Webhook

What we do at Conekta translates into events. For example, an event of interest to us occurs at the time a payment is successfully processed. At that moment we will be interested in doing several things: Send an email to the buyer, generate an invoice, start the process of shipping the product, etc.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::WebhooksApi.new
webhook_request = Conekta::WebhookRequest.new({url: 'https://webhook.site/89277eaa-a8e4-4306-8dc5-f55c80703dc8', synchronous: false}) # WebhookRequest | requested field for webhook
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Create Webhook
  result = api_instance.create_webhook(webhook_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook: #{e}"
end
```

#### Using the create_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> create_webhook_with_http_info(webhook_request, opts)

```ruby
begin
  # Create Webhook
  data, status_code, headers = api_instance.create_webhook_with_http_info(webhook_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue Conekta::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_request** | [**WebhookRequest**](WebhookRequest.md) | requested field for webhook |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.1.0+json


## delete_webhook

> <WebhookResponse> delete_webhook(id, opts)

Delete Webhook

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::WebhooksApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Delete Webhook
  result = api_instance.delete_webhook(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook: #{e}"
end
```

#### Using the delete_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> delete_webhook_with_http_info(id, opts)

```ruby
begin
  # Delete Webhook
  data, status_code, headers = api_instance.delete_webhook_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue Conekta::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## get_webhook

> <WebhookResponse> get_webhook(id, opts)

Get Webhook

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::WebhooksApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get Webhook
  result = api_instance.get_webhook(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook: #{e}"
end
```

#### Using the get_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> get_webhook_with_http_info(id, opts)

```ruby
begin
  # Get Webhook
  data, status_code, headers = api_instance.get_webhook_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue Conekta::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## get_webhooks

> <GetWebhooksResponse> get_webhooks(opts)

Get List of Webhooks

Consume the list of webhooks you have, each environment supports 10 webhooks (For production and testing)

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::WebhooksApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get List of Webhooks
  result = api_instance.get_webhooks(opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks: #{e}"
end
```

#### Using the get_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhooksResponse>, Integer, Hash)> get_webhooks_with_http_info(opts)

```ruby
begin
  # Get List of Webhooks
  data, status_code, headers = api_instance.get_webhooks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhooksResponse>
rescue Conekta::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks_with_http_info: #{e}"
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

[**GetWebhooksResponse**](GetWebhooksResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## test_webhook

> <WebhookResponse> test_webhook(id, opts)

Test Webhook

Send a webhook.ping event

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::WebhooksApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Test Webhook
  result = api_instance.test_webhook(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling WebhooksApi->test_webhook: #{e}"
end
```

#### Using the test_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> test_webhook_with_http_info(id, opts)

```ruby
begin
  # Test Webhook
  data, status_code, headers = api_instance.test_webhook_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue Conekta::ApiError => e
  puts "Error when calling WebhooksApi->test_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## update_webhook

> <WebhookResponse> update_webhook(id, webhook_update_request, opts)

Update Webhook

updates an existing webhook

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::WebhooksApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
webhook_update_request = Conekta::WebhookUpdateRequest.new({url: 'https://webhook.site/89277eaa-a8e4-4306-8dc5-f55c80703dc8'}) # WebhookUpdateRequest | requested fields in order to update a webhook
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update Webhook
  result = api_instance.update_webhook(id, webhook_update_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook: #{e}"
end
```

#### Using the update_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse>, Integer, Hash)> update_webhook_with_http_info(id, webhook_update_request, opts)

```ruby
begin
  # Update Webhook
  data, status_code, headers = api_instance.update_webhook_with_http_info(id, webhook_update_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse>
rescue Conekta::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **webhook_update_request** | [**WebhookUpdateRequest**](WebhookUpdateRequest.md) | requested fields in order to update a webhook |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.1.0+json

