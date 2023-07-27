# Conekta::TransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount of the transaction. |  |
| **charge** | **String** | Randomly assigned unique order identifier associated with the charge. |  |
| **created_at** | **Integer** | Date and time of creation of the transaction in Unix format. |  |
| **currency** | **String** | The currency of the transaction. It uses the 3-letter code of the [International Standard ISO 4217.](https://es.wikipedia.org/wiki/ISO_4217) |  |
| **fee** | **Integer** | The amount to be deducted for taxes and commissions. |  |
| **id** | **String** | Unique identifier of the transaction. |  |
| **livemode** | **Boolean** | Indicates whether the transaction was created in live mode or test mode. |  |
| **net** | **Integer** | The net amount after deducting commissions and taxes. |  |
| **object** | **String** | Object name, which is transaction. |  |
| **status** | **String** | Code indicating transaction status. |  |
| **type** | **String** | Transaction Type |  |

## Example

```ruby
require 'conekta'

instance = Conekta::TransactionResponse.new(
  amount: 1000,
  charge: 5ee7ec58885a45585e6d9f8m,
  created_at: 1553273553,
  currency: MXN,
  fee: 560,
  id: 5ee7ec5b8dea41085erb7f9e,
  livemode: true,
  net: 440,
  object: transaction,
  status: pending,
  type: capture
)
```

