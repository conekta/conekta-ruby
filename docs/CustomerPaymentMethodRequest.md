# Conekta::CustomerPaymentMethodRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of payment method |  |

## Example

```ruby
require 'conekta'

instance = Conekta::CustomerPaymentMethodRequest.new(
  type: card | cash | spei | bnpl | pay_by_bank
)
```

