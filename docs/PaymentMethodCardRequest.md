# Conekta::PaymentMethodCardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of payment method |  |
| **cvc** | **String** | Card security code |  |
| **exp_month** | **String** | Card expiration month |  |
| **exp_year** | **String** | Card expiration year |  |
| **name** | **String** | Cardholder name |  |
| **number** | **String** | Card number |  |
| **customer_ip_address** | **String** | Optional field used to capture the customer&#39;s IP address for fraud prevention and security monitoring purposes | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodCardRequest.new(
  type: card | cash | spei | bnpl,
  cvc: 198,
  exp_month: 12,
  exp_year: 2025,
  name: John Doe,
  number: 4242424242424242,
  customer_ip_address: 0.0.0.0
)
```

