# Conekta::BalancesApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_balance**](BalancesApi.md#get_balance) | **GET** /balances | Get a company&#39;s balance |


## get_balance

> <BalanceResponse> get_balance(opts)

Get a company's balance

Get a company's balance

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::BalancesApi.new
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Get a company's balance
  result = api_instance.get_balance(opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling BalancesApi->get_balance: #{e}"
end
```

#### Using the get_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BalanceResponse>, Integer, Hash)> get_balance_with_http_info(opts)

```ruby
begin
  # Get a company's balance
  data, status_code, headers = api_instance.get_balance_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BalanceResponse>
rescue Conekta::ApiError => e
  puts "Error when calling BalancesApi->get_balance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**BalanceResponse**](BalanceResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json

