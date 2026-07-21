# Conekta::SubscriptionDetailsCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **object** | **String** |  | [optional] |
| **exp_month** | **String** |  | [optional] |
| **exp_year** | **String** |  | [optional] |
| **brand** | **String** |  | [optional] |
| **last4** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **payment_source_status** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **customer_custom_reference** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::SubscriptionDetailsCard.new(
  id: src_2yw5zPrVahTy7xy7P,
  created_at: 1761745218,
  active: true,
  object: card,
  exp_month: 05,
  exp_year: 26,
  brand: mastercard,
  last4: 1005,
  name: test,
  payment_source_status: active,
  customer_id: cus_2yDzKtEAD3khH8Sga,
  customer_custom_reference: null
)
```

