# Conekta::CreateCompanyRequestComercialInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **website** | **String** | The company&#39;s website URL. | [optional] |
| **mcc** | **String** | The Merchant Category Code (MCC) for the company. | [optional] |
| **merchant_support_email** | **String** | Email address for merchant support. | [optional] |
| **merchant_support_phone** | **String** | Phone number for merchant support. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CreateCompanyRequestComercialInfo.new(
  website: http://www.test.com,
  mcc: 5812,
  merchant_support_email: test@test.com,
  merchant_support_phone: 5300000000
)
```

