# Conekta::PaymentMethodGeneralRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_at** | **Integer** | Method expiration date as unix timestamp | [optional] |
| **monthly_installments** | **Integer** | How many months without interest to apply, it can be 3, 6, 9, 12 or 18 | [optional] |
| **type** | **String** | Type of payment method |  |
| **token_id** | **String** |  | [optional] |
| **payment_source_id** | **String** |  | [optional] |
| **cvc** | **String** | Optional, It is a value that allows identifying the security code of the card. Only for PCI merchants | [optional] |
| **contract_id** | **String** | Optional id sent to indicate the bank contract for recurrent card charges. | [optional] |
| **customer_ip_address** | **String** | Optional field used to capture the customer&#39;s IP address for fraud prevention and security monitoring purposes | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodGeneralRequest.new(
  expires_at: 1677196303,
  monthly_installments: null,
  type: card,
  token_id: tok_2897348234,
  payment_source_id: src_2tLkkyfMPh6v7pFry,
  cvc: 123,
  contract_id: S781317595,
  customer_ip_address: 0.0.0.0
)
```

