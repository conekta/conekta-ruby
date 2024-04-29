# Conekta::PayoutOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payout_methods** | **Array&lt;String&gt;** | The payout methods that are allowed for the payout order. |  |
| **amount** | **Integer** | The amount of the payout order. |  |
| **currency** | **String** | The currency in which the payout order is made. | [default to &#39;MXN&#39;] |
| **customer_info** | [**CustomerInfoJustCustomerId**](CustomerInfoJustCustomerId.md) |  |  |
| **metadata** | **Hash&lt;String, Object&gt;** | The metadata of the payout order. | [optional] |
| **payout** | [**Payout**](Payout.md) |  |  |
| **reason** | **String** | The reason for the payout order. |  |

## Example

```ruby
require 'conekta'

instance = Conekta::PayoutOrder.new(
  allowed_payout_methods: [&quot;cashout&quot;],
  amount: 100,
  currency: MXN,
  customer_info: null,
  metadata: {&quot;custom_client_id&quot;:&quot;12345&quot;},
  payout: null,
  reason: Payout order for the customer
)
```

