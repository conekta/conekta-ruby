# Conekta::OrderCheckoutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | **Array&lt;String&gt;** | Are the payment methods available for this link. For subscriptions, only &#39;card&#39; is allowed due to the recurring nature of the payments. |  |
| **exclude_card_networks** | **Array&lt;String&gt;** | List of card networks to exclude from the checkout. This field is only applicable for card payments. | [optional] |
| **plan_ids** | **Array&lt;String&gt;** | List of plan IDs that will be available for subscription. This field is required for subscription payments. | [optional] |
| **expires_at** | **Integer** | It is the time when the link will expire.  It is expressed in seconds since the Unix epoch. The valid range is from 5 minutes to 365 days from the creation date.  | [optional] |
| **failure_url** | **String** | Redirection url back to the site in case of failed payment, applies only to HostedPayment. | [optional] |
| **force_save_card** | **Boolean** | Indicates whether the card used for the payment should be saved for future purchases. This field is only applicable for card payments. | [optional] |
| **monthly_installments_enabled** | **Boolean** |  | [optional] |
| **monthly_installments_options** | **Array&lt;Integer&gt;** |  | [optional] |
| **max_failed_retries** | **Integer** | Number of retries allowed before the checkout is marked as failed | [optional] |
| **name** | **String** | Reason for payment | [optional] |
| **on_demand_enabled** | **Boolean** |  | [optional] |
| **redirection_time** | **Integer** | number of seconds to wait before redirecting to the success_url | [optional] |
| **success_url** | **String** | Redirection url back to the site in case of successful payment, applies only to HostedPayment | [optional] |
| **type** | **String** | Required. This field represents the type of checkout, which determines the user experience during the payment process. &#39;HostedPayment&#39; will redirect the customer to a Conekta-hosted page to complete the payment, while &#39;Integration&#39; allows the payment process to be handled entirely on your site using Conekta&#39;s APIs and SDKs. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderCheckoutRequest.new(
  allowed_payment_methods: [cash, card, bank_transfer, bnpl, pay_by_bank, google, apple],
  exclude_card_networks: [visa, amex],
  plan_ids: [plan_123, plan_456],
  expires_at: null,
  failure_url: https://www.mysite.com/failure,
  force_save_card: false,
  monthly_installments_enabled: false,
  monthly_installments_options: [3, 6, 12],
  max_failed_retries: 3,
  name: null,
  on_demand_enabled: true,
  redirection_time: 10,
  success_url: https://www.mysite.com/success,
  type: null
)
```

