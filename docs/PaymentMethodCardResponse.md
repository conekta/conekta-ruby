# Conekta::PaymentMethodCardResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **id** | **String** |  |  |
| **object** | **String** |  |  |
| **created_at** | **Integer** |  |  |
| **parent_id** | **String** |  | [optional] |
| **last4** | **String** |  | [optional] |
| **bin** | **String** |  | [optional] |
| **card_type** | **String** |  | [optional] |
| **exp_month** | **String** |  | [optional] |
| **exp_year** | **String** |  | [optional] |
| **brand** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **default** | **Boolean** |  | [optional] |
| **visible_on_checkout** | **Boolean** |  | [optional] |
| **payment_source_status** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodCardResponse.new(
  type: null,
  id: src_2s8K1B3PBKDontpi9,
  object: payment_source,
  created_at: 1675715413,
  parent_id: cus_2s8K1B3PBKDontpi8,
  last4: 6410,
  bin: 40276657,
  card_type: debit,
  exp_month: 10,
  exp_year: 25,
  brand: visa,
  name: Fulano Perez&quot;,
  default: null,
  visible_on_checkout: null,
  payment_source_status: active
)
```

