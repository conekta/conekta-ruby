# Conekta::PaymentMethodBankTransfer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **object** | **String** |  |  |
| **bank** | **String** |  | [optional] |
| **clabe** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **executed_at** | **Integer** |  | [optional] |
| **expires_at** | **Integer** |  | [optional] |
| **issuing_account_bank** | **String** |  | [optional] |
| **issuing_account_number** | **String** |  | [optional] |
| **issuing_account_holder_name** | **String** |  | [optional] |
| **issuing_account_tax_id** | **String** |  | [optional] |
| **payment_attempts** | **Array&lt;Object&gt;** |  | [optional] |
| **receiving_account_holder_name** | **String** |  | [optional] |
| **receiving_account_number** | **String** |  | [optional] |
| **receiving_account_bank** | **String** |  | [optional] |
| **receiving_account_tax_id** | **String** |  | [optional] |
| **reference_number** | **String** |  | [optional] |
| **tracking_code** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodBankTransfer.new(
  type: null,
  object: payment_source,
  bank: STP,
  clabe: 646180111805034237,
  description: null,
  executed_at: null,
  expires_at: 1683053729,
  issuing_account_bank: null,
  issuing_account_number: null,
  issuing_account_holder_name: null,
  issuing_account_tax_id: null,
  payment_attempts: null,
  receiving_account_holder_name: null,
  receiving_account_number: 646180111805034237,
  receiving_account_bank: STP,
  receiving_account_tax_id: null,
  reference_number: null,
  tracking_code: null
)
```

