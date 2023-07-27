# Conekta::PaymentMethodCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **object** | **String** |  |  |
| **account_type** | **String** |  | [optional] |
| **auth_code** | **String** |  | [optional] |
| **brand** | **String** |  | [optional] |
| **contract_id** | **String** | Id sent for recurrent charges. | [optional] |
| **country** | **String** |  | [optional] |
| **exp_month** | **String** |  | [optional] |
| **exp_year** | **String** |  | [optional] |
| **fraud_indicators** | **Array&lt;Object&gt;** |  | [optional] |
| **issuer** | **String** |  | [optional] |
| **last4** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodCard.new(
  type: null,
  object: payment_source,
  account_type: Credit,
  auth_code: 867372,
  brand: visa,
  contract_id: S781317595,
  country: MX,
  exp_month: 02,
  exp_year: 30,
  fraud_indicators: null,
  issuer: BANAMEX,
  last4: 4242,
  name: Fulanito Perez
)
```

