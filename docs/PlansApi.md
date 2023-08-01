# Conekta::PlansApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan**](PlansApi.md#create_plan) | **POST** /plans | Create Plan |
| [**delete_plan**](PlansApi.md#delete_plan) | **DELETE** /plans/{id} | Delete Plan |
| [**get_plan**](PlansApi.md#get_plan) | **GET** /plans/{id} | Get Plan |
| [**get_plans**](PlansApi.md#get_plans) | **GET** /plans | Get A List of Plans |
| [**update_plan**](PlansApi.md#update_plan) | **PUT** /plans/{id} | Update Plan |


## create_plan

> <PlanResponse> create_plan(plan_request, opts)

Create Plan

Create a new plan for an existing order

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PlansApi.new
plan_request = Conekta::PlanRequest.new({amount: 10000, frequency: 1, interval: 'week', name: 'Extra Plan3'}) # PlanRequest | requested field for plan
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Create Plan
  result = api_instance.create_plan(plan_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PlansApi->create_plan: #{e}"
end
```

#### Using the create_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanResponse>, Integer, Hash)> create_plan_with_http_info(plan_request, opts)

```ruby
begin
  # Create Plan
  data, status_code, headers = api_instance.create_plan_with_http_info(plan_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PlansApi->create_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_request** | [**PlanRequest**](PlanRequest.md) | requested field for plan |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**PlanResponse**](PlanResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.1.0+json


## delete_plan

> <PlanResponse> delete_plan(id, opts)

Delete Plan

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PlansApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Delete Plan
  result = api_instance.delete_plan(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PlansApi->delete_plan: #{e}"
end
```

#### Using the delete_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanResponse>, Integer, Hash)> delete_plan_with_http_info(id, opts)

```ruby
begin
  # Delete Plan
  data, status_code, headers = api_instance.delete_plan_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PlansApi->delete_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**PlanResponse**](PlanResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## get_plan

> <PlanResponse> get_plan(id, opts)

Get Plan

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PlansApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Get Plan
  result = api_instance.get_plan(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PlansApi->get_plan: #{e}"
end
```

#### Using the get_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanResponse>, Integer, Hash)> get_plan_with_http_info(id, opts)

```ruby
begin
  # Get Plan
  data, status_code, headers = api_instance.get_plan_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PlansApi->get_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**PlanResponse**](PlanResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## get_plans

> <GetPlansResponse> get_plans(opts)

Get A List of Plans

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PlansApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af', # String | In the case of a holding company, the company id of the child company to which will process the request.
  limit: 56, # Integer | The numbers of items to return, the maximum value is 250
  search: 'search_example', # String | General order search, e.g. by mail, reference etc.
  _next: '_next_example', # String | next page
  previous: 'previous_example' # String | previous page
}

begin
  # Get A List of Plans
  result = api_instance.get_plans(opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PlansApi->get_plans: #{e}"
end
```

#### Using the get_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPlansResponse>, Integer, Hash)> get_plans_with_http_info(opts)

```ruby
begin
  # Get A List of Plans
  data, status_code, headers = api_instance.get_plans_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPlansResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PlansApi->get_plans_with_http_info: #{e}"
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

[**GetPlansResponse**](GetPlansResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## update_plan

> <PlanResponse> update_plan(id, plan_update_request, opts)

Update Plan

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::PlansApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
plan_update_request = Conekta::PlanUpdateRequest.new # PlanUpdateRequest | requested field for plan
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Update Plan
  result = api_instance.update_plan(id, plan_update_request, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling PlansApi->update_plan: #{e}"
end
```

#### Using the update_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanResponse>, Integer, Hash)> update_plan_with_http_info(id, plan_update_request, opts)

```ruby
begin
  # Update Plan
  data, status_code, headers = api_instance.update_plan_with_http_info(id, plan_update_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanResponse>
rescue Conekta::ApiError => e
  puts "Error when calling PlansApi->update_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **plan_update_request** | [**PlanUpdateRequest**](PlanUpdateRequest.md) | requested field for plan |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**PlanResponse**](PlanResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.1.0+json

