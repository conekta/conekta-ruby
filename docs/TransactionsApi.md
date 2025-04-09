# Conekta::TransactionsApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_transaction**](TransactionsApi.md#get_transaction) | **GET** /transactions/{id} | Get transaction |
| [**get_transactions**](TransactionsApi.md#get_transactions) | **GET** /transactions | Get List transactions |


## get_transaction

> <TransactionResponse> get_transaction(id, opts)

Get transaction

Get the details of a transaction

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::TransactionsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get transaction
  result = api_instance.get_transaction(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling TransactionsApi->get_transaction: #{e}"
end
```

#### Using the get_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionResponse>, Integer, Hash)> get_transaction_with_http_info(id, opts)

```ruby
begin
  # Get transaction
  data, status_code, headers = api_instance.get_transaction_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionResponse>
rescue Conekta::ApiError => e
  puts "Error when calling TransactionsApi->get_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## get_transactions

> <GetTransactionsResponse> get_transactions(opts)

Get List transactions

Get transaction details in the form of a list

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::TransactionsApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  _next: '_next_example', # String | next page
  previous: 'previous_example', # String | previous page
  id: '65412a893cd69a0001c25892', # String | id of the object to be retrieved
  charge_id: '65412a893cd69a0001c25892', # String | id of the charge used for filtering
  type: 'capture', # String | type of the object to be retrieved
  currency: 'MXN' # String | currency of the object to be retrieved
}

begin
  # Get List transactions
  result = api_instance.get_transactions(opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions: #{e}"
end
```

#### Using the get_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransactionsResponse>, Integer, Hash)> get_transactions_with_http_info(opts)

```ruby
begin
  # Get List transactions
  data, status_code, headers = api_instance.get_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransactionsResponse>
rescue Conekta::ApiError => e
  puts "Error when calling TransactionsApi->get_transactions_with_http_info: #{e}"
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
| **id** | **String** | id of the object to be retrieved | [optional] |
| **charge_id** | **String** | id of the charge used for filtering | [optional] |
| **type** | **String** | type of the object to be retrieved | [optional] |
| **currency** | **String** | currency of the object to be retrieved | [optional] |

### Return type

[**GetTransactionsResponse**](GetTransactionsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json

