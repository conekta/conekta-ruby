# Conekta::CreateCustomerFiscalEntitiesResponseAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **object** | **String** |  |  |
| **created_at** | **Integer** |  |  |
| **parent_id** | **String** |  | [optional] |
| **default** | **Boolean** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CreateCustomerFiscalEntitiesResponseAllOf.new(
  id: ship_cont_2tKZsTYcsryyu7Ah8,
  object: shipping_contact,
  created_at: 1675715413,
  parent_id: cus_2tKcHxhTz7xU5SymF,
  default: null
)
```

