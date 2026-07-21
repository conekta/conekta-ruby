# Conekta::SubscriptionDetailsPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **amount** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **interval** | **String** |  | [optional] |
| **frequency** | **Integer** |  | [optional] |
| **trial_period_days** | **Integer** |  | [optional] |
| **expiry_count** | **Integer** |  | [optional] |
| **created_at** | **Integer** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::SubscriptionDetailsPlan.new(
  id: VG5,
  object: plan,
  name: CLARO,
  amount: 30000,
  currency: USD,
  interval: month,
  frequency: 1,
  trial_period_days: null,
  expiry_count: 1,
  created_at: 1742087277
)
```

