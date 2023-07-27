# Conekta::CustomerFiscalEntitiesDataResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**CustomerFiscalEntitiesRequestAddress**](CustomerFiscalEntitiesRequestAddress.md) |  |  |
| **tax_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **company_name** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **object** | **String** |  |  |
| **created_at** | **Integer** |  |  |
| **parent_id** | **String** |  | [optional] |
| **default** | **Boolean** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CustomerFiscalEntitiesDataResponse.new(
  address: null,
  tax_id: null,
  email: null,
  phone: null,
  metadata: null,
  company_name: conekta,
  id: ship_cont_2tKZsTYcsryyu7Ah8,
  object: shipping_contact,
  created_at: 1675715413,
  parent_id: cus_2tKcHxhTz7xU5SymF,
  default: null
)
```

