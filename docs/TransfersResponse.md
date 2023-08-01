# Conekta::TransfersResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Amount in cents of the transfer. | [optional] |
| **created_at** | **Integer** | Date and time of creation of the transfer. | [optional] |
| **currency** | **String** | The currency of the transfer. It uses the 3-letter code of the [International Standard ISO 4217.](https://es.wikipedia.org/wiki/ISO_4217) | [optional] |
| **id** | **String** | Unique identifier of the transfer. | [optional] |
| **livemode** | **Boolean** | Indicates whether the transfer was created in live mode or test mode. | [optional] |
| **method** | [**TransferMethodResponse**](TransferMethodResponse.md) |  | [optional] |
| **object** | **String** | Object name, which is transfer. | [optional] |
| **statement_description** | **String** | Description of the transfer. | [optional] |
| **statement_reference** | **String** | Reference number of the transfer. | [optional] |
| **status** | **String** | Code indicating transfer status. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::TransfersResponse.new(
  amount: 10000,
  created_at: 1553273553,
  currency: MXN,
  id: 5b0337d4dD344ef954fe1X4b6,
  livemode: true,
  method: null,
  object: transfer,
  statement_description: Conekta 4401234,
  statement_reference: 4401234,
  status: pending
)
```

