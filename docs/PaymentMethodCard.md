# Conekta::PaymentMethodCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **object** | **String** |  |  |
| **account_type** | **String** | Account type of the card | [optional] |
| **auth_code** | **String** |  | [optional] |
| **brand** | **String** | Brand of the card | [optional] |
| **contract_id** | **String** | Id sent for recurrent charges. | [optional] |
| **country** | **String** | Country of the card | [optional] |
| **exp_month** | **String** | Expiration month of the card | [optional] |
| **exp_year** | **String** | Expiration year of the card | [optional] |
| **fraud_indicators** | **Array&lt;Object&gt;** |  | [optional] |
| **issuer** | **String** | Issuer of the card | [optional] |
| **last4** | **String** | Last 4 digits of the card | [optional] |
| **name** | **String** | Name of the cardholder | [optional] |
| **customer_ip_address** | **String** | Optional field used to capture the customer&#39;s IP address for fraud prevention and security monitoring purposes | [optional] |

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
  exp_year: 2026,
  fraud_indicators: null,
  issuer: BANAMEX,
  last4: 4242,
  name: Fulanito Perez,
  customer_ip_address: 0.0.0.0
)
```

