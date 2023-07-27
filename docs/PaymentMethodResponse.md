# Conekta::PaymentMethodResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **id** | **String** |  |  |
| **object** | **String** |  |  |
| **created_at** | **Integer** |  |  |
| **parent_id** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodResponse.new(
  type: null,
  id: src_2s8K1B3PBKDontpi9,
  object: payment_source,
  created_at: 1675715413,
  parent_id: cus_2s8K1B3PBKDontpi8
)
```

