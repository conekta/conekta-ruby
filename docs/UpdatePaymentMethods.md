# Conekta::UpdatePaymentMethods

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the payment method holder | [optional] |
| **expires_at** | **Integer** | The expiration date of the payment method in Unix timestamp format | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::UpdatePaymentMethods.new(
  name: Payment recurrent,
  expires_at: 1760457350
)
```

