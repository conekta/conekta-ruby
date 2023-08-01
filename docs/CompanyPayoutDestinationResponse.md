# Conekta::CompanyPayoutDestinationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The resource&#39;s type | [optional] |
| **currency** | **String** | currency of the receiving account | [optional] |
| **account_holder_name** | **String** | Name of the account holder | [optional] |
| **bank** | **String** | Name of the bank | [optional] |
| **type** | **String** | Type of the payout destination | [optional] |
| **account_number** | **String** | Account number of the receiving account | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CompanyPayoutDestinationResponse.new(
  object: null,
  currency: MXN,
  account_holder_name: Child Company A,
  bank: BBVA,
  type: null,
  account_number: 123456789012345678
)
```

