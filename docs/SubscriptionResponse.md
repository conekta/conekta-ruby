# Conekta::SubscriptionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_cycle_start** | **Integer** |  | [optional] |
| **billing_cycle_end** | **Integer** |  | [optional] |
| **canceled_at** | **Integer** |  | [optional] |
| **canceled_reason** | **String** | Reason for cancellation. This field appears when the subscription status is &#39;canceled&#39;. | [optional] |
| **card_id** | **String** |  | [optional] |
| **charge_id** | **String** |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **customer_custom_reference** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **last_billing_cycle_order_id** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **paused_at** | **Integer** |  | [optional] |
| **plan_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **subscription_start** | **Integer** |  | [optional] |
| **trial_start** | **Integer** |  | [optional] |
| **trial_end** | **Integer** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::SubscriptionResponse.new(
  billing_cycle_start: 1677626827,
  billing_cycle_end: 1677626827,
  canceled_at: 1678258162,
  canceled_reason: user_cancelation,
  card_id: src_2tKcHxhTz7xU5SymL,
  charge_id: 2tKcHxhTz7xU5SymL,
  created_at: 1677626837,
  customer_custom_reference: dotnet_123456,
  customer_id: cus_2tKcHxhTz7xU5SymF,
  id: gold-plan,
  last_billing_cycle_order_id: ord_2tSoMP7bZJbLiq4z8,
  object: subscription,
  paused_at: 1678258162,
  plan_id: plan_2tXx672QLQ68CkmMn,
  status: past_due,
  subscription_start: 1677626837,
  trial_start: 1677626837,
  trial_end: 1677626837
)
```

