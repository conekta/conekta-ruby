# Conekta::ChargeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Amount to be charged in cents | [optional] |
| **payment_method** | [**ChargeRequestPaymentMethod**](ChargeRequestPaymentMethod.md) |  |  |
| **reference_id** | **String** | Custom reference to add to the charge | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::ChargeRequest.new(
  amount: 40000,
  payment_method: null,
  reference_id: null
)
```

