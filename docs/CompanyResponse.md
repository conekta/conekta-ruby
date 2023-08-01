# Conekta::CompanyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The child company&#39;s unique identifier | [optional] |
| **created_at** | **Integer** | The resource&#39;s creation date (unix timestamp) | [optional] |
| **name** | **String** | The child company&#39;s name | [optional] |
| **object** | **String** | The resource&#39;s type | [optional] |
| **parent_company_id** | **String** | Id of the parent company | [optional] |
| **use_parent_fiscal_data** | **Boolean** | Whether the parent company&#39;s fiscal data is to be used for liquidation and tax purposes | [optional] |
| **payout_destination** | [**CompanyPayoutDestinationResponse**](CompanyPayoutDestinationResponse.md) |  | [optional] |
| **fiscal_info** | [**CompanyFiscalInfoResponse**](CompanyFiscalInfoResponse.md) |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CompanyResponse.new(
  id: 6441bb27659a060465da7335,
  created_at: 1680397724,
  name: Child Company A,
  object: null,
  parent_company_id: 6441bb3c62db5812e7920c31,
  use_parent_fiscal_data: false,
  payout_destination: null,
  fiscal_info: null
)
```

