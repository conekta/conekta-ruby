# Conekta::PaymentMethodCashRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of payment method |  |
| **expires_at** | **Integer** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodCashRequest.new(
  type: card | cash | spei,
  expires_at: 1553273553
)
```

