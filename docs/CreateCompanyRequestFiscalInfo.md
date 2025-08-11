# Conekta::CreateCompanyRequestFiscalInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_phone** | **String** | The business phone number for fiscal purposes. | [optional] |
| **fiscal_type** | **String** | The fiscal type of the company (e.g., &#39;moral&#39;, &#39;persona_fisica&#39;). | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CreateCompanyRequestFiscalInfo.new(
  business_phone: 5300000000,
  fiscal_type: moral
)
```

