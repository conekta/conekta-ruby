# Conekta::CheckoutResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | **Array&lt;String&gt;** | Are the payment methods available for this link | [optional] |
| **can_not_expire** | **Boolean** |  | [optional] |
| **emails_sent** | **Integer** |  | [optional] |
| **exclude_card_networks** | **Array&lt;Object&gt;** |  | [optional] |
| **expires_at** | **Integer** |  | [optional] |
| **failure_url** | **String** |  | [optional] |
| **force_3ds_flow** | **Boolean** |  | [optional] |
| **id** | **String** |  |  |
| **livemode** | **Boolean** |  |  |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **monthly_installments_enabled** | **Boolean** |  | [optional] |
| **monthly_installments_options** | **Array&lt;Integer&gt;** |  | [optional] |
| **name** | **String** | Reason for charge |  |
| **needs_shipping_contact** | **Boolean** |  | [optional] |
| **object** | **String** |  |  |
| **paid_payments_count** | **Integer** |  | [optional] |
| **payments_limit_count** | **Integer** |  | [optional] |
| **recurrent** | **Boolean** |  | [optional] |
| **slug** | **String** |  | [optional] |
| **sms_sent** | **Integer** |  | [optional] |
| **starts_at** | **Integer** |  | [optional] |
| **status** | **String** |  | [optional] |
| **success_url** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CheckoutResponse.new(
  allowed_payment_methods: [&quot;cash&quot;,&quot;card&quot;,&quot;bank_transfer&quot;,&quot;bnpl&quot;],
  can_not_expire: false,
  emails_sent: 0,
  exclude_card_networks: null,
  expires_at: 1680397724,
  failure_url: https://pay.conekta.com/failure,
  force_3ds_flow: false,
  id: b0bf16c4-18b9-445e-ba24-01604f329dbf,
  livemode: true,
  metadata: {&quot;key&quot;:&quot;value&quot;},
  monthly_installments_enabled: false,
  monthly_installments_options: [3,6,12],
  name: Payment Link Name 1594138857,
  needs_shipping_contact: false,
  object: checkout,
  paid_payments_count: 0,
  payments_limit_count: 5,
  recurrent: false,
  slug: b0bf16c418b9445eba2401604f329dbf,
  sms_sent: 0,
  starts_at: 1677650400,
  status: Issued,
  success_url: https://pay.conekta.com/success,
  type: PaymentLink,
  url: https://pay.conekta.com/link/b0bf16c418b9445eba2401604f329dbf
)
```

