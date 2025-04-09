# Conekta::EventsApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_event**](EventsApi.md#get_event) | **GET** /events/{id} | Get Event |
| [**get_events**](EventsApi.md#get_events) | **GET** /events | Get list of Events |
| [**resend_event**](EventsApi.md#resend_event) | **POST** /events/{event_id}/resend | Resend Event |


## get_event

> <EventResponse> get_event(id, opts)

Get Event

Returns a single event

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::EventsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get Event
  result = api_instance.get_event(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling EventsApi->get_event: #{e}"
end
```

#### Using the get_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> get_event_with_http_info(id, opts)

```ruby
begin
  # Get Event
  data, status_code, headers = api_instance.get_event_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue Conekta::ApiError => e
  puts "Error when calling EventsApi->get_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## get_events

> <GetEventsResponse> get_events(opts)

Get list of Events

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::EventsApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get list of Events
  result = api_instance.get_events(opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling EventsApi->get_events: #{e}"
end
```

#### Using the get_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEventsResponse>, Integer, Hash)> get_events_with_http_info(opts)

```ruby
begin
  # Get list of Events
  data, status_code, headers = api_instance.get_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEventsResponse>
rescue Conekta::ApiError => e
  puts "Error when calling EventsApi->get_events_with_http_info: #{e}"
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

[**GetEventsResponse**](GetEventsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## resend_event

> <EventsResendResponse> resend_event(event_id, resend_request, opts)

Resend Event

Resend event to selected webhooks

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::EventsApi.new
event_id = '6463d6e35a4c3e001819e760' # String | event identifier
resend_request = Conekta::ResendRequest.new({webhooks_ids: ["6307a60c41de27127515a575", "6307a60c41de27127515a571"]}) # ResendRequest | requested fields for resend an event
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Resend Event
  result = api_instance.resend_event(event_id, resend_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling EventsApi->resend_event: #{e}"
end
```

#### Using the resend_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventsResendResponse>, Integer, Hash)> resend_event_with_http_info(event_id, resend_request, opts)

```ruby
begin
  # Resend Event
  data, status_code, headers = api_instance.resend_event_with_http_info(event_id, resend_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventsResendResponse>
rescue Conekta::ApiError => e
  puts "Error when calling EventsApi->resend_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | event identifier |  |
| **resend_request** | [**ResendRequest**](ResendRequest.md) | requested fields for resend an event |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**EventsResendResponse**](EventsResendResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json

