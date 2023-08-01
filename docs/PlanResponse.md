# Conekta::PlanResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **expiry_count** | **Integer** |  | [optional] |
| **frequency** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **interval** | **String** |  | [optional] |
| **livemode** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **trial_period_days** | **Integer** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PlanResponse.new(
  amount: 10000,
  created_at: 1666900846,
  currency: MXN,
  expiry_count: 12,
  frequency: 1,
  id: gold-plan,
  interval: month,
  livemode: true,
  name: Extra Plan3,
  object: plan,
  trial_period_days: 0
)
```

