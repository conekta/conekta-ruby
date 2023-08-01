# Conekta::OrderResponseFiscalEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**OrderResponseFiscalEntityAddress**](OrderResponseFiscalEntityAddress.md) |  | [optional] |
| **tax_id** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderResponseFiscalEntity.new(
  address: null,
  tax_id: 324234234,
  id: fis_ent_2tN85VYaSMyDvjB3M,
  object: fiscal_entity
)
```

