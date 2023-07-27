# Conekta::TransferDestinationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_holder** | **String** | Name of the account holder. | [optional] |
| **account_number** | **String** | Account number of the bank account. | [optional] |
| **bank** | **String** | Name of the bank. | [optional] |
| **created_at** | **Integer** | Date and time of creation of the transfer. | [optional] |
| **id** | **String** | Unique identifier of the transfer. | [optional] |
| **object** | **String** | Object name, which is bank_transfer_payout_method. | [optional] |
| **payee_id** | **String** | Unique identifier of the payee. | [optional] |
| **type** | **String** | Type of the payee. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::TransferDestinationResponse.new(
  account_holder: John Doe,
  account_number: 012180023547896764,
  bank: BBVA Bancomer,
  created_at: 1553273553,
  id: pytmtd_2ide3qwTdDvNBosEC,
  object: bank_transfer_payout_method,
  payee_id: payee_2icdDewRxDENBos85,
  type: BankTransferPayoutMethod
)
```

