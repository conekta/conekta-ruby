# Conekta::CompanyFiscalInfoResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The resource&#39;s type | [optional] |
| **tax_id** | **String** | Tax ID of the company | [optional] |
| **legal_entity_name** | **String** | Legal name of the company | [optional] |
| **business_type** | **String** | Business type of the company | [optional] |
| **phone** | **String** | Phone number of the company | [optional] |
| **physical_person_business_type** | **String** | Business type if &#39;persona_fisica&#39; | [optional] |
| **address** | [**CompanyFiscalInfoAddressResponse**](CompanyFiscalInfoAddressResponse.md) |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CompanyFiscalInfoResponse.new(
  object: null,
  tax_id: XAXX010101000,
  legal_entity_name: Child Company A,
  business_type: persona_moral,
  phone: 5555555555,
  physical_person_business_type: null,
  address: null
)
```

