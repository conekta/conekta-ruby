# Conekta::ChargeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  | [optional] |
| **monthly_installments** | **Integer** | How many months without interest to apply, it can be 3, 6, 9, 12 or 18 | [optional] |
| **payment_method** | [**ChargeRequestPaymentMethod**](ChargeRequestPaymentMethod.md) |  |  |
| **reference_id** | **String** | Custom reference to add to the charge | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::ChargeRequest.new(
  amount: 40000,
  monthly_installments: null,
  payment_method: null,
  reference_id: null
)
```

