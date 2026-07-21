# Conekta::SubscriptionsCustomerPortalApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer_portal**](SubscriptionsCustomerPortalApi.md#create_customer_portal) | **POST** /subscriptions/{subscription_id}/customer_portal | Create customer portal |
| [**get_customer_portal**](SubscriptionsCustomerPortalApi.md#get_customer_portal) | **GET** /subscriptions/{subscription_id}/customer_portal | Get customer portal |


## create_customer_portal

> <CustomerPortalResponse> create_customer_portal(subscription_id, opts)

Create customer portal

Creates a customer portal for a subscription. If a portal already exists, returns the existing one.

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsCustomerPortalApi.new
subscription_id = 'sub_2tGzG1GxtDAZHEGPH' # String | Identifier of the subscription resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create customer portal
  result = api_instance.create_customer_portal(subscription_id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsCustomerPortalApi->create_customer_portal: #{e}"
end
```

#### Using the create_customer_portal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerPortalResponse>, Integer, Hash)> create_customer_portal_with_http_info(subscription_id, opts)

```ruby
begin
  # Create customer portal
  data, status_code, headers = api_instance.create_customer_portal_with_http_info(subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerPortalResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsCustomerPortalApi->create_customer_portal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Identifier of the subscription resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CustomerPortalResponse**](CustomerPortalResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json


## get_customer_portal

> <CustomerPortalResponse> get_customer_portal(subscription_id, opts)

Get customer portal

Retrieves the customer portal for a subscription

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::SubscriptionsCustomerPortalApi.new
subscription_id = 'sub_2tGzG1GxtDAZHEGPH' # String | Identifier of the subscription resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get customer portal
  result = api_instance.get_customer_portal(subscription_id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsCustomerPortalApi->get_customer_portal: #{e}"
end
```

#### Using the get_customer_portal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerPortalResponse>, Integer, Hash)> get_customer_portal_with_http_info(subscription_id, opts)

```ruby
begin
  # Get customer portal
  data, status_code, headers = api_instance.get_customer_portal_with_http_info(subscription_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerPortalResponse>
rescue Conekta::ApiError => e
  puts "Error when calling SubscriptionsCustomerPortalApi->get_customer_portal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Identifier of the subscription resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**CustomerPortalResponse**](CustomerPortalResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.2.0+json

