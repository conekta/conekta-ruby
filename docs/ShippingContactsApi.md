# Conekta::ShippingContactsApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer_shipping_contacts**](ShippingContactsApi.md#create_customer_shipping_contacts) | **POST** /customers/{id}/shipping_contacts | Create a shipping contacts |
| [**delete_customer_shipping_contacts**](ShippingContactsApi.md#delete_customer_shipping_contacts) | **DELETE** /customers/{id}/shipping_contacts/{shipping_contacts_id} | Delete shipping contacts |
| [**update_customer_shipping_contacts**](ShippingContactsApi.md#update_customer_shipping_contacts) | **PUT** /customers/{id}/shipping_contacts/{shipping_contacts_id} | Update shipping contacts |


## create_customer_shipping_contacts

> <CustomerShippingContactsResponse> create_customer_shipping_contacts(id, customer_shipping_contacts, opts)

Create a shipping contacts

Create a shipping contacts for a customer.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::ShippingContactsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
customer_shipping_contacts = Conekta::CustomerShippingContacts.new({address: Conekta::CustomerShippingContactsAddress.new}) # CustomerShippingContacts | requested field for customer shippings contacts
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create a shipping contacts
  result = api_instance.create_customer_shipping_contacts(id, customer_shipping_contacts, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling ShippingContactsApi->create_customer_shipping_contacts: #{e}"
end
```

#### Using the create_customer_shipping_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerShippingContactsResponse>, Integer, Hash)> create_customer_shipping_contacts_with_http_info(id, customer_shipping_contacts, opts)

```ruby
begin
  # Create a shipping contacts
  data, status_code, headers = api_instance.create_customer_shipping_contacts_with_http_info(id, customer_shipping_contacts, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerShippingContactsResponse>
rescue Conekta::ApiError => e
  puts "Error when calling ShippingContactsApi->create_customer_shipping_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **customer_shipping_contacts** | [**CustomerShippingContacts**](CustomerShippingContacts.md) | requested field for customer shippings contacts |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CustomerShippingContactsResponse**](CustomerShippingContactsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.1.0+json


## delete_customer_shipping_contacts

> <CustomerShippingContactsResponse> delete_customer_shipping_contacts(id, shipping_contacts_id, opts)

Delete shipping contacts

Delete shipping contact that corresponds to a customer ID.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::ShippingContactsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
shipping_contacts_id = '6307a60c41de27127515a575' # String | identifier
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Delete shipping contacts
  result = api_instance.delete_customer_shipping_contacts(id, shipping_contacts_id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling ShippingContactsApi->delete_customer_shipping_contacts: #{e}"
end
```

#### Using the delete_customer_shipping_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerShippingContactsResponse>, Integer, Hash)> delete_customer_shipping_contacts_with_http_info(id, shipping_contacts_id, opts)

```ruby
begin
  # Delete shipping contacts
  data, status_code, headers = api_instance.delete_customer_shipping_contacts_with_http_info(id, shipping_contacts_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerShippingContactsResponse>
rescue Conekta::ApiError => e
  puts "Error when calling ShippingContactsApi->delete_customer_shipping_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **shipping_contacts_id** | **String** | identifier |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CustomerShippingContactsResponse**](CustomerShippingContactsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## update_customer_shipping_contacts

> <CustomerShippingContactsResponse> update_customer_shipping_contacts(id, shipping_contacts_id, customer_update_shipping_contacts, opts)

Update shipping contacts

Update shipping contact that corresponds to a customer ID.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::ShippingContactsApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
shipping_contacts_id = '6307a60c41de27127515a575' # String | identifier
customer_update_shipping_contacts = Conekta::CustomerUpdateShippingContacts.new # CustomerUpdateShippingContacts | requested field for customer update shippings contacts
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update shipping contacts
  result = api_instance.update_customer_shipping_contacts(id, shipping_contacts_id, customer_update_shipping_contacts, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling ShippingContactsApi->update_customer_shipping_contacts: #{e}"
end
```

#### Using the update_customer_shipping_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerShippingContactsResponse>, Integer, Hash)> update_customer_shipping_contacts_with_http_info(id, shipping_contacts_id, customer_update_shipping_contacts, opts)

```ruby
begin
  # Update shipping contacts
  data, status_code, headers = api_instance.update_customer_shipping_contacts_with_http_info(id, shipping_contacts_id, customer_update_shipping_contacts, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerShippingContactsResponse>
rescue Conekta::ApiError => e
  puts "Error when calling ShippingContactsApi->update_customer_shipping_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **shipping_contacts_id** | **String** | identifier |  |
| **customer_update_shipping_contacts** | [**CustomerUpdateShippingContacts**](CustomerUpdateShippingContacts.md) | requested field for customer update shippings contacts |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CustomerShippingContactsResponse**](CustomerShippingContactsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.1.0+json

