# Conekta::PayoutOrderResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_payout_methods** | **Array&lt;String&gt;** | The payout methods that are allowed for the payout order. |  |
| **amount** | **Integer** | The amount of the payout order. |  |
| **created_at** | **Integer** | The creation date of the payout order. |  |
| **currency** | **String** | The currency in which the payout order is made. | [default to &#39;MXN&#39;] |
| **customer_info** | [**PayoutOrderResponseCustomerInfo**](PayoutOrderResponseCustomerInfo.md) |  |  |
| **expires_at** | **Integer** | The expiration date of the payout order. | [optional] |
| **id** | **String** | The id of the payout order. |  |
| **livemode** | **Boolean** | The live mode of the payout order. |  |
| **object** | **String** | The object of the payout order. |  |
| **metadata** | **Hash&lt;String, Object&gt;** | The metadata of the payout order. | [optional] |
| **payouts** | [**Array&lt;PayoutOrderPayoutsItem&gt;**](PayoutOrderPayoutsItem.md) | The payout information of the payout order. |  |
| **reason** | **String** | The reason for the payout order. |  |
| **status** | **String** | The status of the payout order. | [optional] |
| **updated_at** | **Integer** | The update date of the payout order. |  |

## Example

```ruby
require 'conekta'

instance = Conekta::PayoutOrderResponse.new(
  allowed_payout_methods: [&quot;cashout&quot;],
  amount: 100,
  created_at: 1677626837,
  currency: MXN,
  customer_info: null,
  expires_at: 1677626837,
  id: f2654d66-d740-457a-9a8c-f96b5196f44e,
  livemode: true,
  object: payout_order,
  metadata: {&quot;custom_client_id&quot;:&quot;12345&quot;},
  payouts: null,
  reason: Payout order for the customer,
  status: open,
  updated_at: 1677626837
)
```

