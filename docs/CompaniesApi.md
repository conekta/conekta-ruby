# Conekta::CompaniesApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_companies**](CompaniesApi.md#get_companies) | **GET** /companies | Get List of Companies |
| [**get_company**](CompaniesApi.md#get_company) | **GET** /companies/{id} | Get Company |


## get_companies

> <GetCompaniesResponse> get_companies(opts)

Get List of Companies

Consume the list of child companies.  This is used for holding companies with several child entities.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::CompaniesApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get List of Companies
  result = api_instance.get_companies(opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling CompaniesApi->get_companies: #{e}"
end
```

#### Using the get_companies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCompaniesResponse>, Integer, Hash)> get_companies_with_http_info(opts)

```ruby
begin
  # Get List of Companies
  data, status_code, headers = api_instance.get_companies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCompaniesResponse>
rescue Conekta::ApiError => e
  puts "Error when calling CompaniesApi->get_companies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **limit** | **Integer** | The numbers of items to return, the maximum value is 250 | [optional][default to 20] |
| **search** | **String** | General order search, e.g. by mail, reference etc. | [optional] |
| **_next** | **String** | next page | [optional] |
| **previous** | **String** | previous page | [optional] |

### Return type

[**GetCompaniesResponse**](GetCompaniesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## get_company

> <CompanyResponse> get_company(id, opts)

Get Company

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::CompaniesApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Get Company
  result = api_instance.get_company(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling CompaniesApi->get_company: #{e}"
end
```

#### Using the get_company_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanyResponse>, Integer, Hash)> get_company_with_http_info(id, opts)

```ruby
begin
  # Get Company
  data, status_code, headers = api_instance.get_company_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanyResponse>
rescue Conekta::ApiError => e
  puts "Error when calling CompaniesApi->get_company_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**CompanyResponse**](CompanyResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json

