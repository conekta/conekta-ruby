# Conekta::CreateCompanyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the company. | [optional] |
| **type_company** | **String** | The type of company, &#39;owner&#39; | [optional] |
| **comercial_info** | [**CreateCompanyRequestComercialInfo**](CreateCompanyRequestComercialInfo.md) |  | [optional] |
| **fiscal_info** | [**CreateCompanyRequestFiscalInfo**](CreateCompanyRequestFiscalInfo.md) |  | [optional] |
| **bank_account_info** | [**CreateCompanyRequestBankAccountInfo**](CreateCompanyRequestBankAccountInfo.md) |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CreateCompanyRequest.new(
  name: test,
  type_company: owner,
  comercial_info: null,
  fiscal_info: null,
  bank_account_info: null
)
```

