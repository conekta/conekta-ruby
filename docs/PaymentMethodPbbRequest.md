# Conekta::PaymentMethodPbbRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of the payment method |  |
| **expires_at** | **Integer** | Expiration date of the payment method, in Unix timestamp format | [optional] |
| **product_type** | **String** | Product type of the payment method, use for the payment method to know the product type |  |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodPbbRequest.new(
  type: pay_by_bank,
  expires_at: 1680397724,
  product_type: bbva_pay_by_bank
)
```

