# Conekta::PaymentMethodCashResponseAllOfAgreements

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agreement** | **String** | Agreement number, you can use this number to pay in the store/bbva | [optional] |
| **provider** | **String** | Provider name, you can use this to know where to pay | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodCashResponseAllOfAgreements.new(
  agreement: 2409526,
  provider: bbva_cash_in
)
```

