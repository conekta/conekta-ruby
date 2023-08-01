# Conekta::AntifraudApi

All URIs are relative to *https://api.conekta.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rule_blacklist**](AntifraudApi.md#create_rule_blacklist) | **POST** /antifraud/blacklists | Create blacklisted rule |
| [**create_rule_whitelist**](AntifraudApi.md#create_rule_whitelist) | **POST** /antifraud/whitelists | Create whitelisted rule |
| [**delete_rule_blacklist**](AntifraudApi.md#delete_rule_blacklist) | **DELETE** /antifraud/blacklists/{id} | Delete blacklisted rule |
| [**delete_rule_whitelist**](AntifraudApi.md#delete_rule_whitelist) | **DELETE** /antifraud/whitelists/{id} | Delete whitelisted rule |
| [**get_rule_blacklist**](AntifraudApi.md#get_rule_blacklist) | **GET** /antifraud/blacklists | Get list of blacklisted rules |
| [**get_rule_whitelist**](AntifraudApi.md#get_rule_whitelist) | **GET** /antifraud/whitelists | Get a list of whitelisted rules |


## create_rule_blacklist

> <BlacklistRuleResponse> create_rule_blacklist(create_risk_rules_data, opts)

Create blacklisted rule

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::AntifraudApi.new
create_risk_rules_data = Conekta::CreateRiskRulesData.new({description: 'this client email was verified at 20/09/22 by internal process', field: 'email | phone | card_token', value: 'email@example.com | 818081808180 | src_2qUCNd5AyQqfPMBuV'}) # CreateRiskRulesData | requested field for blacklist rule
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Create blacklisted rule
  result = api_instance.create_rule_blacklist(create_risk_rules_data, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling AntifraudApi->create_rule_blacklist: #{e}"
end
```

#### Using the create_rule_blacklist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlacklistRuleResponse>, Integer, Hash)> create_rule_blacklist_with_http_info(create_risk_rules_data, opts)

```ruby
begin
  # Create blacklisted rule
  data, status_code, headers = api_instance.create_rule_blacklist_with_http_info(create_risk_rules_data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlacklistRuleResponse>
rescue Conekta::ApiError => e
  puts "Error when calling AntifraudApi->create_rule_blacklist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_risk_rules_data** | [**CreateRiskRulesData**](CreateRiskRulesData.md) | requested field for blacklist rule |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**BlacklistRuleResponse**](BlacklistRuleResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.1.0+json


## create_rule_whitelist

> <WhitelistlistRuleResponse> create_rule_whitelist(opts)

Create whitelisted rule

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::AntifraudApi.new
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  create_risk_rules_data: Conekta::CreateRiskRulesData.new({description: 'this client email was verified at 20/09/22 by internal process', field: 'email | phone | card_token', value: 'email@example.com | 818081808180 | src_2qUCNd5AyQqfPMBuV'}) # CreateRiskRulesData | 
}

begin
  # Create whitelisted rule
  result = api_instance.create_rule_whitelist(opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling AntifraudApi->create_rule_whitelist: #{e}"
end
```

#### Using the create_rule_whitelist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhitelistlistRuleResponse>, Integer, Hash)> create_rule_whitelist_with_http_info(opts)

```ruby
begin
  # Create whitelisted rule
  data, status_code, headers = api_instance.create_rule_whitelist_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhitelistlistRuleResponse>
rescue Conekta::ApiError => e
  puts "Error when calling AntifraudApi->create_rule_whitelist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **create_risk_rules_data** | [**CreateRiskRulesData**](CreateRiskRulesData.md) |  | [optional] |

### Return type

[**WhitelistlistRuleResponse**](WhitelistlistRuleResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/vnd.conekta-v2.1.0+json


## delete_rule_blacklist

> <DeletedBlacklistRuleResponse> delete_rule_blacklist(id, opts)

Delete blacklisted rule

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::AntifraudApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Delete blacklisted rule
  result = api_instance.delete_rule_blacklist(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling AntifraudApi->delete_rule_blacklist: #{e}"
end
```

#### Using the delete_rule_blacklist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedBlacklistRuleResponse>, Integer, Hash)> delete_rule_blacklist_with_http_info(id, opts)

```ruby
begin
  # Delete blacklisted rule
  data, status_code, headers = api_instance.delete_rule_blacklist_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedBlacklistRuleResponse>
rescue Conekta::ApiError => e
  puts "Error when calling AntifraudApi->delete_rule_blacklist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**DeletedBlacklistRuleResponse**](DeletedBlacklistRuleResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## delete_rule_whitelist

> <DeletedWhitelistRuleResponse> delete_rule_whitelist(id, opts)

Delete whitelisted rule

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::AntifraudApi.new
id = '6307a60c41de27127515a575' # String | Identifier of the resource
opts = {
  accept_language: 'es', # String | Use for knowing which language to use
  x_child_company_id: '6441b6376b60c3a638da80af' # String | In the case of a holding company, the company id of the child company to which will process the request.
}

begin
  # Delete whitelisted rule
  result = api_instance.delete_rule_whitelist(id, opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling AntifraudApi->delete_rule_whitelist: #{e}"
end
```

#### Using the delete_rule_whitelist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletedWhitelistRuleResponse>, Integer, Hash)> delete_rule_whitelist_with_http_info(id, opts)

```ruby
begin
  # Delete whitelisted rule
  data, status_code, headers = api_instance.delete_rule_whitelist_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletedWhitelistRuleResponse>
rescue Conekta::ApiError => e
  puts "Error when calling AntifraudApi->delete_rule_whitelist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the resource |  |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |
| **x_child_company_id** | **String** | In the case of a holding company, the company id of the child company to which will process the request. | [optional] |

### Return type

[**DeletedWhitelistRuleResponse**](DeletedWhitelistRuleResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## get_rule_blacklist

> <RiskRulesList> get_rule_blacklist(opts)

Get list of blacklisted rules

Return all rules

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::AntifraudApi.new
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Get list of blacklisted rules
  result = api_instance.get_rule_blacklist(opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling AntifraudApi->get_rule_blacklist: #{e}"
end
```

#### Using the get_rule_blacklist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RiskRulesList>, Integer, Hash)> get_rule_blacklist_with_http_info(opts)

```ruby
begin
  # Get list of blacklisted rules
  data, status_code, headers = api_instance.get_rule_blacklist_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RiskRulesList>
rescue Conekta::ApiError => e
  puts "Error when calling AntifraudApi->get_rule_blacklist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**RiskRulesList**](RiskRulesList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json


## get_rule_whitelist

> <RiskRulesList> get_rule_whitelist(opts)

Get a list of whitelisted rules

Return all rules

### Examples

```ruby
require 'time'
require 'conekta'
# setup authorization
Conekta.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Conekta::AntifraudApi.new
opts = {
  accept_language: 'es' # String | Use for knowing which language to use
}

begin
  # Get a list of whitelisted rules
  result = api_instance.get_rule_whitelist(opts)
  p result
rescue Conekta::ApiError => e
  puts "Error when calling AntifraudApi->get_rule_whitelist: #{e}"
end
```

#### Using the get_rule_whitelist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RiskRulesList>, Integer, Hash)> get_rule_whitelist_with_http_info(opts)

```ruby
begin
  # Get a list of whitelisted rules
  data, status_code, headers = api_instance.get_rule_whitelist_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RiskRulesList>
rescue Conekta::ApiError => e
  puts "Error when calling AntifraudApi->get_rule_whitelist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_language** | **String** | Use for knowing which language to use | [optional][default to &#39;es&#39;] |

### Return type

[**RiskRulesList**](RiskRulesList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.conekta-v2.1.0+json

