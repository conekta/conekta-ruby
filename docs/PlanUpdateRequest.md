# Conekta::PlanUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount in cents that will be charged on the interval specified. | [optional] |
| **currency** | **String** | ISO 4217 for currencies, for the Mexican peso it is MXN/USD | [optional] |
| **expiry_count** | **Integer** | Number of repetitions of the frequency NUMBER OF CHARGES TO BE MADE, considering the interval and frequency, this evolves over time, but is subject to the expiration count. | [optional] |
| **name** | **String** | The name of the plan. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PlanUpdateRequest.new(
  amount: 10000,
  currency: MXN,
  expiry_count: 12,
  name: Extra Plan3
)
```

