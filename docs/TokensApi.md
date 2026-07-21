# Conekta::TokensApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_token**](TokensApi.md#create_token) | **POST** /tokens | Create Token |


## create_token

> <TokenResponse> create_token(token_request, opts)

Create Token

Generate a payment token, to associate it with a card, Endpoint could be use directly only for PCI compliance account 

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::TokensApi.new
token_request = Conekta::TokenRequest.new # TokenRequest | requested field for token
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Create Token
  result = api_instance.create_token(token_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling TokensApi->create_token: #{e}"
end
```

#### Using the create_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenResponse>, Integer, Hash)> create_token_with_http_info(token_request, opts)

```ruby
begin
  # Create Token
  data, status_code, headers = api_instance.create_token_with_http_info(token_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenResponse>
rescue Conekta::ApiError => e
  puts "Error when calling TokensApi->create_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_request** | [**TokenRequest**](TokenRequest.md) | requested field for token |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json

