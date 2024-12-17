# Conekta::CheckoutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | **Array&lt;String&gt;** | Are the payment methods available for this link |  |
| **expires_at** | **Integer** | Unix timestamp of checkout expiration | [optional] |
| **failure_url** | **String** | Redirection url back to the site in case of failed payment, applies only to HostedPayment. | [optional] |
| **monthly_installments_enabled** | **Boolean** |  | [optional] |
| **monthly_installments_options** | **Array&lt;Integer&gt;** |  | [optional] |
| **max_failed_retries** | **Integer** | Number of retries allowed before the checkout is marked as failed | [optional] |
| **name** | **String** | Reason for payment | [optional] |
| **on_demand_enabled** | **Boolean** |  | [optional] |
| **redirection_time** | **Integer** | number of seconds to wait before redirecting to the success_url | [optional] |
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
  max_failed_retries: 3,
  name: null,
  on_demand_enabled: true,
  redirection_time: 10,
  success_url: null,
  type: Integration
)
```

