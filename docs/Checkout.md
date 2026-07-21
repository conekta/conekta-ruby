# Conekta::Checkout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | **Array&lt;String&gt;** | Those are the payment methods that will be available for the link |  |
| **exclude_card_networks** | **Array&lt;String&gt;** | List of card networks to exclude from the checkout. This field is only applicable for card payments. | [optional] |
| **expires_at** | **Integer** | It is the time when the link will expire.  It is expressed in seconds since the Unix epoch. The valid range is from 5 minutes to 365 days from the creation date.  |  |
| **monthly_installments_enabled** | **Boolean** | This flag allows you to specify if months without interest will be active. | [optional] |
| **monthly_installments_options** | **Array&lt;Integer&gt;** | This field allows you to specify the number of months without interest. | [optional] |
| **three_ds_mode** | **String** | Indicates the 3DS2 mode for the order, either smart or strict. This property is only applicable when 3DS is enabled. When 3DS is disabled, this field should be null. | [optional] |
| **name** | **String** | Reason for charge |  |
| **needs_shipping_contact** | **Boolean** | This flag allows you to fill in the shipping information at checkout. | [optional] |
| **on_demand_enabled** | **Boolean** | This flag allows you to specify if the link will be on demand. | [optional] |
| **plan_ids** | **Array&lt;String&gt;** | It is a list of plan IDs that will be associated with the order. | [optional] |
| **order_template** | [**CheckoutOrderTemplate**](CheckoutOrderTemplate.md) |  |  |
| **payments_limit_count** | **Integer** | It is the number of payments that can be made through the link. | [optional] |
| **success_url** | **String** | The URL to redirect to after a successful payment. | [optional] |
| **recurrent** | **Boolean** | false: single use. true: multiple payments |  |
| **type** | **String** | It is the type of link that will be created. It must be a valid type. |  |

## Example

```ruby
require 'conekta'

instance = Conekta::Checkout.new(
  allowed_payment_methods: [cash, card, bank_transfer, bnpl, pay_by_bank],
  exclude_card_networks: [visa, amex],
  expires_at: 1680397724,
  monthly_installments_enabled: true,
  monthly_installments_options: [3, 6, 12],
  three_ds_mode: null,
  name: Payment Link Name 1594138857,
  needs_shipping_contact: false,
  on_demand_enabled: true,
  plan_ids: [plan_123, plan_456],
  order_template: null,
  payments_limit_count: 5,
  success_url: https://www.conekta.com/success,
  recurrent: false,
  type: PaymentLink
)
```

