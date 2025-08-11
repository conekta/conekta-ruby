# Conekta::PaymentMethodSpeiRecurrent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **id** | **String** |  |  |
| **object** | **String** |  |  |
| **created_at** | **Integer** |  |  |
| **parent_id** | **String** |  | [optional] |
| **bank** | **String** | Bank name for the SPEI payment method | [optional] |
| **reference** | **String** |  | [optional] |
| **expires_at** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodSpeiRecurrent.new(
  type: null,
  id: src_2s8K1B3PBKDontpi9,
  object: payment_source,
  created_at: 1675715413,
  parent_id: cus_2s8K1B3PBKDontpi8,
  bank: STP,
  reference: 93000262276908,
  expires_at: none
)
```

