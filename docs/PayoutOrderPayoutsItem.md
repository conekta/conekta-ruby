# Conekta::PayoutOrderPayoutsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount of the payout. |  |
| **currency** | **String** | The currency in which the payout is made. |  |
| **expires_at** | **Integer** | The expiration date of the payout. | [optional] |
| **id** | **String** | The id of the payout. |  |
| **livemode** | **Boolean** | The live mode of the payout. |  |
| **object** | **String** | The object of the payout. |  |
| **payout_order_id** | **String** | The id of the payout order. | [optional] |
| **status** | **String** | The status of the payout. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PayoutOrderPayoutsItem.new(
  amount: 3000,
  currency: MXN,
  expires_at: 1677626837,
  id: payout_2vZwsRAhhGp2dFDJx,
  livemode: true,
  object: payout,
  payout_order_id: f2654d66-d740-457a-9a8c-f96b5196f44e,
  status: open
)
```

