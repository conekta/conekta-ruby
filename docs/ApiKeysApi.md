# Conekta::ApiKeysApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_api_key**](ApiKeysApi.md#create_api_key) | **POST** /api_keys | Create Api Key |
| [**delete_api_key**](ApiKeysApi.md#delete_api_key) | **DELETE** /api_keys/{id} | Delete Api Key |
| [**get_api_key**](ApiKeysApi.md#get_api_key) | **GET** /api_keys/{id} | Get Api Key |
| [**get_api_keys**](ApiKeysApi.md#get_api_keys) | **GET** /api_keys | Get list of Api Keys |
| [**update_api_key**](ApiKeysApi.md#update_api_key) | **PUT** /api_keys/{id} | Update Api Key |


## create_api_key

> <ApiKeyCreateResponse> create_api_key(api_key_request, opts)

Create Api Key

Create a api key

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::ApiKeysApi.new
api_key_request = Conekta::ApiKeyRequest.new({role: 'private'}) # ApiKeyRequest | requested field for a api keys
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create Api Key
  result = api_instance.create_api_key(api_key_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling ApiKeysApi->create_api_key: #{e}"
end
```

#### Using the create_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyCreateResponse>, Integer, Hash)> create_api_key_with_http_info(api_key_request, opts)

```ruby
begin
  # Create Api Key
  data, status_code, headers = api_instance.create_api_key_with_http_info(api_key_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyCreateResponse>
rescue Conekta::ApiError => e
  puts "Error when calling ApiKeysApi->create_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key_request** | [**ApiKeyRequest**](ApiKeyRequest.md) | requested field for a api keys |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ApiKeyCreateResponse**](ApiKeyCreateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json


## delete_api_key

> <DeleteApiKeysResponse> delete_api_key(id, opts)

Delete Api Key

Deletes a api key that corresponds to a api key ID

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::ApiKeysApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Delete Api Key
  result = api_instance.delete_api_key(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling ApiKeysApi->delete_api_key: #{e}"
end
```

#### Using the delete_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteApiKeysResponse>, Integer, Hash)> delete_api_key_with_http_info(id, opts)

```ruby
begin
  # Delete Api Key
  data, status_code, headers = api_instance.delete_api_key_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteApiKeysResponse>
rescue Conekta::ApiError => e
  puts "Error when calling ApiKeysApi->delete_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**DeleteApiKeysResponse**](DeleteApiKeysResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## get_api_key

> <ApiKeyResponse> get_api_key(id, opts)

Get Api Key

Gets a api key that corresponds to a api key ID

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::ApiKeysApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get Api Key
  result = api_instance.get_api_key(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling ApiKeysApi->get_api_key: #{e}"
end
```

#### Using the get_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyResponse>, Integer, Hash)> get_api_key_with_http_info(id, opts)

```ruby
begin
  # Get Api Key
  data, status_code, headers = api_instance.get_api_key_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyResponse>
rescue Conekta::ApiError => e
  puts "Error when calling ApiKeysApi->get_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## get_api_keys

> <GetApiKeysResponse> get_api_keys(opts)

Get list of Api Keys

Consume the list of api keys you have

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::ApiKeysApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  _next: '_next_example', # String | next page
  previous: 'previous_example', # String | previous page
  search: 'search_example' # String | General search, e.g. by id, description, prefix
}

begin
  # Get list of Api Keys
  result = api_instance.get_api_keys(opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling ApiKeysApi->get_api_keys: #{e}"
end
```

#### Using the get_api_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetApiKeysResponse>, Integer, Hash)> get_api_keys_with_http_info(opts)

```ruby
begin
  # Get list of Api Keys
  data, status_code, headers = api_instance.get_api_keys_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetApiKeysResponse>
rescue Conekta::ApiError => e
  puts "Error when calling ApiKeysApi->get_api_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |
| **limit** | **Integer** | The numbers of items to return, the maximum value is 250 | [optional][default to 20] |
| **_next** | **String** | next page | [optional] |
| **previous** | **String** | previous page | [optional] |
| **search** | **String** | General search, e.g. by id, description, prefix | [optional] |

### Return type

[**GetApiKeysResponse**](GetApiKeysResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## update_api_key

> <ApiKeyResponse> update_api_key(id, opts)

Update Api Key

Update an existing api key

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::ApiKeysApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  api_key_update_request: Conekta::ApiKeyUpdateRequest.new # ApiKeyUpdateRequest | 
}

begin
  # Update Api Key
  result = api_instance.update_api_key(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling ApiKeysApi->update_api_key: #{e}"
end
```

#### Using the update_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyResponse>, Integer, Hash)> update_api_key_with_http_info(id, opts)

```ruby
begin
  # Update Api Key
  data, status_code, headers = api_instance.update_api_key_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyResponse>
rescue Conekta::ApiError => e
  puts "Error when calling ApiKeysApi->update_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **api_key_update_request** | [**ApiKeyUpdateRequest**](ApiKeyUpdateRequest.md) |  | [optional] |

### Return type

[**ApiKeyResponse**](ApiKeyResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json

