# Conekta::CompaniesApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_company**](CompaniesApi.md#create_company) | **POST** /companies | Create Company |
| [**get_companies**](CompaniesApi.md#get_companies) | **GET** /companies | Get List of Companies |
| [**get_company**](CompaniesApi.md#get_company) | **GET** /companies/{id} | Get Company |
| [**get_company_documents**](CompaniesApi.md#get_company_documents) | **GET** /companies/{company_id}/documents | Get Company Documents |
| [**update_company_document**](CompaniesApi.md#update_company_document) | **PATCH** /companies/{company_id}/document | Update Company Document |
| [**upload_company_document**](CompaniesApi.md#upload_company_document) | **POST** /companies/{company_id}/document | Upload Company Document |


## create_company

> <CompanyResponse> create_company(create_company_request)

Create Company

Create a new company.

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
create_company_request = Conekta::CreateCompanyRequest.new # CreateCompanyRequest | Company data

begin
  # Create Company
  result = api_instance.create_company(create_company_request)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling CompaniesApi->create_company: #{e}"
end
```

#### Using the create_company_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanyResponse>, Integer, Hash)> create_company_with_http_info(create_company_request)

```ruby
begin
  # Create Company
  data, status_code, headers = api_instance.create_company_with_http_info(create_company_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanyResponse>
rescue Conekta::ApiError => e
  puts "Error when calling CompaniesApi->create_company_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_company_request** | [**CreateCompanyRequest**](CreateCompanyRequest.md) | Company data |  |

### Return type

[**CompanyResponse**](CompanyResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json


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


## get_company_documents

> <Array<CompanyDocumentResponse>> get_company_documents(company_id, opts)

Get Company Documents

Retrieve a list of documents associated with a specific company.

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
company_id = '6307a60c41de27127515a575' # String | The unique identifier of the company.
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Get Company Documents
  result = api_instance.get_company_documents(company_id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling CompaniesApi->get_company_documents: #{e}"
end
```

#### Using the get_company_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CompanyDocumentResponse>>, Integer, Hash)> get_company_documents_with_http_info(company_id, opts)

```ruby
begin
  # Get Company Documents
  data, status_code, headers = api_instance.get_company_documents_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CompanyDocumentResponse>>
rescue Conekta::ApiError => e
  puts "Error when calling CompaniesApi->get_company_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | The unique identifier of the company. |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**Array&lt;CompanyDocumentResponse&gt;**](CompanyDocumentResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## update_company_document

> <CompanyDocumentResponse> update_company_document(company_id, company_document_request, opts)

Update Company Document

Updates an existing document associated with a specific company.

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
company_id = '6827206b1ec60400015eb09a' # String | The unique identifier of the company.
company_document_request = Conekta::CompanyDocumentRequest.new({file_classification: 'id_legal_representative', content_type: 'application/pdf', file_name: 'example_document.pdf', file_data: '[B@53a49745'}) # CompanyDocumentRequest | Document information to update.
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Update Company Document
  result = api_instance.update_company_document(company_id, company_document_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling CompaniesApi->update_company_document: #{e}"
end
```

#### Using the update_company_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanyDocumentResponse>, Integer, Hash)> update_company_document_with_http_info(company_id, company_document_request, opts)

```ruby
begin
  # Update Company Document
  data, status_code, headers = api_instance.update_company_document_with_http_info(company_id, company_document_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanyDocumentResponse>
rescue Conekta::ApiError => e
  puts "Error when calling CompaniesApi->update_company_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | The unique identifier of the company. |  |
| **company_document_request** | [**CompanyDocumentRequest**](CompanyDocumentRequest.md) | Document information to update. |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**CompanyDocumentResponse**](CompanyDocumentResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json


## upload_company_document

> <CompanyDocumentResponse> upload_company_document(company_id, company_document_request, opts)

Upload Company Document

Uploads a document associated with a specific company.

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
company_id = '6827206b1ec60400015eb09a' # String | The unique identifier of the company.
company_document_request = Conekta::CompanyDocumentRequest.new({file_classification: 'id_legal_representative', content_type: 'application/pdf', file_name: 'example_document.pdf', file_data: '[B@53a49745'}) # CompanyDocumentRequest | Document information to upload.
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Upload Company Document
  result = api_instance.upload_company_document(company_id, company_document_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling CompaniesApi->upload_company_document: #{e}"
end
```

#### Using the upload_company_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanyDocumentResponse>, Integer, Hash)> upload_company_document_with_http_info(company_id, company_document_request, opts)

```ruby
begin
  # Upload Company Document
  data, status_code, headers = api_instance.upload_company_document_with_http_info(company_id, company_document_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanyDocumentResponse>
rescue Conekta::ApiError => e
  puts "Error when calling CompaniesApi->upload_company_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** | The unique identifier of the company. |  |
| **company_document_request** | [**CompanyDocumentRequest**](CompanyDocumentRequest.md) | Document information to upload. |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**CompanyDocumentResponse**](CompanyDocumentResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.2.0+json

