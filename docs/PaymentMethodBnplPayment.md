# Conekta::PaymentMethodBnplPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **object** | **String** |  |  |
| **cancel_url** | **String** | URL to redirect the customer after a canceled payment | [optional] |
| **expires_at** | **Integer** | Expiration date of the charge |  |
| **failure_url** | **String** | URL to redirect the customer after a failed payment | [optional] |
| **product_type** | **String** | Product type of the charge |  |
| **redirect_url** | **String** | URL to redirect the customer to complete the payment | [optional] |
| **success_url** | **String** | URL to redirect the customer after a successful payment | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodBnplPayment.new(
  type: null,
  object: payment_source,
  cancel_url: https://example.com/cancel,
  expires_at: 1683053729,
  failure_url: https://example.com/failure,
  product_type: null,
  redirect_url: https://example.com/redirect,
  success_url: https://example.com/success
)
```

