# Conekta::TokenResponseCheckout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | **Array&lt;String&gt;** |  | [optional] |
| **can_not_expire** | **Boolean** | Indicates if the checkout can not expire. | [optional] |
| **emails_sent** | **Integer** |  | [optional] |
| **exclude_card_networks** | **Array&lt;String&gt;** |  | [optional] |
| **expires_at** | **Integer** | Date and time when the checkout expires. | [optional] |
| **failure_url** | **String** | URL to redirect the customer to if the payment process fails. | [optional] |
| **force_3ds_flow** | **Boolean** | Indicates if the checkout forces the 3DS flow. | [optional] |
| **id** | **String** |  | [optional] |
| **livemode** | **Boolean** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **monthly_installments_enabled** | **Boolean** | Indicates if the checkout allows monthly installments. | [optional] |
| **monthly_installments_options** | **Array&lt;Integer&gt;** | List of monthly installments options. | [optional] |
| **name** | **String** |  | [optional] |
| **needs_shipping_contact** | **Boolean** |  | [optional] |
| **object** | **String** | Indicates the type of object, in this case checkout. | [optional] |
| **on_demand_enabled** | **Boolean** | Indicates if the checkout allows on demand payments. | [optional] |
| **paid_payments_count** | **Integer** | Number of payments that have been paid. | [optional] |
| **recurrent** | **Boolean** | Indicates if the checkout is recurrent. | [optional] |
| **sms_sent** | **Integer** |  | [optional] |
| **starts_at** | **Integer** | Date and time when the checkout starts. | [optional] |
| **status** | **String** | Status of the checkout. | [optional] |
| **success_url** | **String** | URL to redirect the customer to after the payment process is completed. | [optional] |
| **type** | **String** | Type of checkout. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::TokenResponseCheckout.new(
  allowed_payment_methods: null,
  can_not_expire: false,
  emails_sent: 0,
  exclude_card_networks: null,
  expires_at: 1675715413,
  failure_url: https://example.com/failure,
  force_3ds_flow: false,
  id: 524f9d2f-8c2e-4e64-a33d-6006711a91bd,
  livemode: true,
  metadata: {key&#x3D;value},
  monthly_installments_enabled: false,
  monthly_installments_options: null,
  name: tok-2toNoPZpJgRU4PvgZ,
  needs_shipping_contact: false,
  object: checkout,
  on_demand_enabled: false,
  paid_payments_count: 0,
  recurrent: false,
  sms_sent: 0,
  starts_at: 1675715413,
  status: Issued,
  success_url: https://example.com/success,
  type: Integration
)
```

