# Conekta::TokenCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cvc** | **String** | It is a value that allows identifying the security code of the card. |  |
| **device_fingerprint** | **String** | It is a value that allows identifying the device fingerprint. | [optional] |
| **exp_month** | **String** | It is a value that allows identifying the expiration month of the card. |  |
| **exp_year** | **String** | It is a value that allows identifying the expiration year of the card. |  |
| **name** | **String** | It is a value that allows identifying the name of the cardholder. |  |
| **number** | **String** | It is a value that allows identifying the number of the card. |  |

## Example

```ruby
require 'conekta'

instance = Conekta::TokenCard.new(
  cvc: 123,
  device_fingerprint: zptcxk4p6w1ijwz85snf1l3bqe5g09ie,
  exp_month: 12,
  exp_year: 26,
  name: Miguel,
  number: 4242424242424242
)
```

