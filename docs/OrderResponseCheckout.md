# Conekta::OrderResponseCheckout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | **Array&lt;String&gt;** | Are the payment methods available for this link | [optional] |
| **excluded_payment_methods** | **Array&lt;String&gt;** | Payment methods excluded from the checkout. This field is only returned when excluded_payment_methods is provided in the request. | [optional] |
| **can_not_expire** | **Boolean** |  | [optional] |
| **emails_sent** | **Integer** |  | [optional] |
| **exclude_card_networks** | **Array&lt;String&gt;** |  | [optional] |
| **expires_at** | **Integer** |  | [optional] |
| **failure_url** | **String** |  | [optional] |
| **force_3ds_flow** | **Boolean** |  | [optional] |
| **force_save_card** | **Boolean** | Indicates whether the card used for the payment should be saved for future purchases. This field is only applicable for card payments. | [optional] |
| **id** | **String** |  |  |
| **is_redirect_on_failure** | **Boolean** |  | [optional] |
| **livemode** | **Boolean** |  |  |
| **max_failed_retries** | **Integer** | Number of retries allowed before the checkout is marked as failed | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **monthly_installments_enabled** | **Boolean** |  | [optional] |
| **monthly_installments_options** | **Array&lt;Integer&gt;** |  | [optional] |
| **name** | **String** |  |  |
| **needs_shipping_contact** | **Boolean** |  | [optional] |
| **object** | **String** |  |  |
| **on_demand_enabled** | **Boolean** |  | [optional] |
| **paid_payments_count** | **Integer** |  | [optional] |
| **recurrent** | **Boolean** |  | [optional] |
| **redirection_time** | **Integer** | number of seconds to wait before redirecting to the success_url | [optional] |
| **slug** | **String** |  | [optional] |
| **sms_sent** | **Integer** |  | [optional] |
| **success_url** | **String** | Redirection url back to the site in case of successful payment, applies only to HostedPayment | [optional] |
| **starts_at** | **Integer** |  | [optional] |
| **status** | **String** |  | [optional] |
| **type** | **String** | This field represents the type of checkout, which determines the user experience during the payment process. &#39;HostedPayment&#39; will redirect the customer to a Conekta-hosted page to complete the payment, while &#39;Integration&#39; allows the payment process to be handled entirely on your site using Conekta&#39;s APIs and SDKs. |  |
| **url** | **String** | Indicate the url of the Conekta component to complete the payment. For HostedPayment, this will be a Conekta-hosted page | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderResponseCheckout.new(
  allowed_payment_methods: [cash, card, bank_transfer, bnpl, pay_by_bank, apple, google],
  excluded_payment_methods: [cash, bank_transfer],
  can_not_expire: false,
  emails_sent: 0,
  exclude_card_networks: [visa, amex],
  expires_at: 1676613599,
  failure_url: http://187.216.228.66:2222/SysVentasPagos/Acceso.aspx,
  force_3ds_flow: false,
  force_save_card: false,
  id: 6fca054a-8519-4c43-971e-cea35cc519bb,
  is_redirect_on_failure: false,
  livemode: false,
  max_failed_retries: 3,
  metadata: null,
  monthly_installments_enabled: false,
  monthly_installments_options: null,
  name: ord-2tNDzhA4Akmzj11AS,
  needs_shipping_contact: false,
  object: checkout,
  on_demand_enabled: true,
  paid_payments_count: 0,
  recurrent: false,
  redirection_time: 2,
  slug: 6fca054a85194c43971ecea35cc519bb,
  sms_sent: 0,
  success_url: http://187.216.228.66:2222/SysVentasPagos/Acceso.aspx,
  starts_at: 1676354400,
  status: Issued,
  type: HostedPayment,
  url: https://pay.conekta.io/checkout/6fca054a85194c43971ecea35cc519bb
)
```

