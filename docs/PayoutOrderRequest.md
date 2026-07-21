# Conekta::PayoutOrderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payout_methods** | **Array&lt;String&gt;** | The payout methods that are allowed for the payout order. |  |
| **amount** | **Integer** | The amount of the payout order. |  |
| **currency** | **String** | The currency in which the payout order is made. | [default to &#39;MXN&#39;] |
| **customer_info** | [**PayoutOrderRequestCustomerInfo**](PayoutOrderRequestCustomerInfo.md) |  |  |
| **expires_at** | **Integer** | The expiration time of the payout order in Unix timestamp. |  |
| **metadata** | **Hash&lt;String, Object&gt;** | The metadata of the payout order. | [optional] |
| **payout** | [**Payout**](Payout.md) |  |  |
| **reason** | **String** | The reason for the payout order. |  |

## Example

```ruby
require 'conekta'

instance = Conekta::PayoutOrderRequest.new(
  allowed_payout_methods: [cashout],
  amount: 100,
  currency: MXN,
  customer_info: null,
  expires_at: 1700000000,
  metadata: {custom_client_id&#x3D;12345},
  payout: null,
  reason: Payout order for the customer
)
```

