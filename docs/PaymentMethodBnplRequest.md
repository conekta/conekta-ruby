# Conekta::PaymentMethodBnplRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of the payment method |  |
| **cancel_url** | **String** | URL to redirect the customer after a canceled payment |  |
| **can_not_expire** | **Boolean** | Indicates if the payment method can not expire |  |
| **failure_url** | **String** | URL to redirect the customer after a failed payment |  |
| **product_type** | **String** | Product type of the payment method, use for the payment method to know the product type |  |
| **success_url** | **String** | URL to redirect the customer after a successful payment |  |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodBnplRequest.new(
  type: bnpl,
  cancel_url: https://example.com/cancel,
  can_not_expire: true,
  failure_url: https://example.com/failure,
  product_type: aplazo_bnpl,
  success_url: https://example.com/success
)
```

