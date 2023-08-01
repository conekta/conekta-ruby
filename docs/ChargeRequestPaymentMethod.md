# Conekta::ChargeRequestPaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_at** | **Integer** | Method expiration date as unix timestamp | [optional] |
| **type** | **String** |  |  |
| **token_id** | **String** |  | [optional] |
| **payment_source_id** | **String** |  | [optional] |
| **contract_id** | **String** | Optional id sent to indicate the bank contract for recurrent card charges. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::ChargeRequestPaymentMethod.new(
  expires_at: 1677196303,
  type: card,
  token_id: tok_2897348234,
  payment_source_id: src_2tLkkyfMPh6v7pFry,
  contract_id: S781317595
)
```

