# Conekta::LogsApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_log_by_id**](LogsApi.md#get_log_by_id) | **GET** /logs/{id} | Get Log |
| [**get_logs**](LogsApi.md#get_logs) | **GET** /logs | Get List Of Logs |


## get_log_by_id

> <LogResponse> get_log_by_id(id, opts)

Get Log

Get the details of a specific log

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::LogsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get Log
  result = api_instance.get_log_by_id(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling LogsApi->get_log_by_id: #{e}"
end
```

#### Using the get_log_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogResponse>, Integer, Hash)> get_log_by_id_with_http_info(id, opts)

```ruby
begin
  # Get Log
  data, status_code, headers = api_instance.get_log_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogResponse>
rescue Conekta::ApiError => e
  puts "Error when calling LogsApi->get_log_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**LogResponse**](LogResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## get_logs

> <LogsResponse> get_logs(opts)

Get List Of Logs

Get log details in the form of a list

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::LogsApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get List Of Logs
  result = api_instance.get_logs(opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling LogsApi->get_logs: #{e}"
end
```

#### Using the get_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogsResponse>, Integer, Hash)> get_logs_with_http_info(opts)

```ruby
begin
  # Get List Of Logs
  data, status_code, headers = api_instance.get_logs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogsResponse>
rescue Conekta::ApiError => e
  puts "Error when calling LogsApi->get_logs_with_http_info: #{e}"
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

[**LogsResponse**](LogsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json

