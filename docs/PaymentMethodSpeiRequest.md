# Conekta::PaymentMethodSpeiRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of payment method |  |
| **expires_at** | **Integer** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodSpeiRequest.new(
  type: card | cash | spei | bnpl,
  expires_at: 1553273553
)
```

