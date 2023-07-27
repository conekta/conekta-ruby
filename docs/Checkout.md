# Conekta::Checkout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payment_methods** | **Array&lt;String&gt;** | Those are the payment methods that will be available for the link |  |
| **expires_at** | **Integer** | It is the time when the link will expire. It is expressed in seconds since the Unix epoch. The valid range is from 2 to 365 days (the valid range will be taken from the next day of the creation date at 00:01 hrs)  |  |
| **monthly_installments_enabled** | **Boolean** | This flag allows you to specify if months without interest will be active. | [optional] |
| **monthly_installments_options** | **Array&lt;Integer&gt;** | This field allows you to specify the number of months without interest. | [optional] |
| **name** | **String** | Reason for charge |  |
| **needs_shipping_contact** | **Boolean** | This flag allows you to fill in the shipping information at checkout. | [optional] |
| **on_demand_enabled** | **Boolean** | This flag allows you to specify if the link will be on demand. | [optional] |
| **order_template** | [**CheckoutOrderTemplate**](CheckoutOrderTemplate.md) |  |  |
| **payments_limit_count** | **Integer** | It is the number of payments that can be made through the link. | [optional] |
| **recurrent** | **Boolean** | false: single use. true: multiple payments |  |
| **type** | **String** | It is the type of link that will be created. It must be a valid type. |  |

## Example

```ruby
require 'conekta'

instance = Conekta::Checkout.new(
  allowed_payment_methods: [cash, card, bank_transfer],
  expires_at: 1680397724,
  monthly_installments_enabled: true,
  monthly_installments_options: [3, 6, 12],
  name: Payment Link Name 1594138857,
  needs_shipping_contact: false,
  on_demand_enabled: true,
  order_template: null,
  payments_limit_count: 5,
  recurrent: false,
  type: PaymentLink
)
```

