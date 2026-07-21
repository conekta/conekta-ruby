# Conekta::SubscriptionDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card** | [**SubscriptionDetailsCard**](SubscriptionDetailsCard.md) |  | [optional] |
| **plan** | [**SubscriptionDetailsPlan**](SubscriptionDetailsPlan.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **plan_id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **next_billing_cycle** | **Integer** |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **updated_at** | **Integer** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::SubscriptionDetails.new(
  card: null,
  plan: null,
  id: sub_2yYsQuYtXAbP1fdYu,
  object: subscription,
  status: canceled,
  plan_id: VG5,
  customer_id: cus_2yDzKtEAD3khH8Sga,
  next_billing_cycle: 1876833632,
  created_at: 1755873642,
  updated_at: 1761745218
)
```

