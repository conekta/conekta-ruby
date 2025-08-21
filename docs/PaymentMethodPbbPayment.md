# Conekta::PaymentMethodPbbPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **object** | **String** |  |  |
| **deep_link** | **String** | Deep link for the payment, use for mobile apps/flows |  |
| **expires_at** | **Integer** | Expiration date of the charge |  |
| **product_type** | **String** | Product type of the charge |  |
| **redirect_url** | **String** | URL to redirect the customer to complete the payment |  |
| **reference** | **String** | Reference for the payment |  |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodPbbPayment.new(
  type: null,
  object: payment_source,
  deep_link: https://mgm.bbva.mx/WA3b/pbb?AGREEMENT&#x3D;002484374&amp;AMOUNT&#x3D;1&amp;CONCEPT&#x3D;PagoDirecto&amp;CURRENCY&#x3D;MXN&amp;REFERENCE&#x3D;22277523174328893295,
  expires_at: 1683053729,
  product_type: null,
  redirect_url: https://example.com/redirect,
  reference: 22277523174328893295
)
```

