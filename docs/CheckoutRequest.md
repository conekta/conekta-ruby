# Conekta::CheckoutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | **Array&lt;String&gt;** | Are the payment methods available for this link |  |
| **expires_at** | **Integer** | Unix timestamp of checkout expiration | [optional] |
| **failure_url** | **String** | Redirection url back to the site in case of failed payment, applies only to HostedPayment. | [optional] |
| **monthly_installments_enabled** | **Boolean** |  | [optional] |
| **monthly_installments_options** | **Array&lt;Integer&gt;** |  | [optional] |
| **name** | **String** | Reason for payment | [optional] |
| **on_demand_enabled** | **Boolean** |  | [optional] |
| **success_url** | **String** | Redirection url back to the site in case of successful payment, applies only to HostedPayment | [optional] |
| **type** | **String** | This field represents the type of checkout | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CheckoutRequest.new(
  allowed_payment_methods: [&quot;cash&quot;,&quot;card&quot;,&quot;bank_transfer&quot;],
  expires_at: null,
  failure_url: null,
  monthly_installments_enabled: false,
  monthly_installments_options: [3,6,12],
  name: null,
  on_demand_enabled: true,
  success_url: null,
  type: Integration
)
```

