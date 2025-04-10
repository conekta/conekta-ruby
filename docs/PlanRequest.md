# Conekta::PlanRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount in cents that will be charged on the interval specified. |  |
| **currency** | **String** | ISO 4217 for currencies, for the Mexican peso it is MXN/USD | [optional] |
| **expiry_count** | **Integer** | Number of repetitions of the frequency NUMBER OF CHARGES TO BE MADE, considering the interval and frequency, this evolves over time, but is subject to the expiration count. | [optional] |
| **frequency** | **Integer** | Frequency of the charge, which together with the interval, can be every 3 weeks, every 4 months, every 2 years, every 5 fortnights |  |
| **id** | **String** | internal reference id | [optional] |
| **interval** | **String** | The interval of time between each charge. |  |
| **name** | **String** | The name of the plan. |  |
| **trial_period_days** | **Integer** | The number of days the customer will have a free trial. | [optional] |
| **max_retries** | **Integer** | (optional) Specifies the maximum number of retry attempts for a subscription payment before it is canceled. | [optional] |
| **retry_delay_hours** | **Integer** | (optional)  Defines the number of hours between subscription payment retry attempts. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PlanRequest.new(
  amount: 10000,
  currency: MXN,
  expiry_count: 12,
  frequency: 1,
  id: plan_24234,
  interval: null,
  name: Extra Plan3,
  trial_period_days: 0,
  max_retries: 3,
  retry_delay_hours: 50
)
```

