# Conekta::CompanyFiscalInfoAddressResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The resource&#39;s type | [optional] |
| **street1** | **String** | Street Address | [optional] |
| **street2** | **String** | Colonia | [optional] |
| **city** | **String** | City | [optional] |
| **state** | **String** | State | [optional] |
| **country** | **String** | Country | [optional] |
| **postal_code** | **String** | Postal code | [optional] |
| **external_number** | **String** | Street number | [optional] |
| **internal_number** | **String** | Unit / apartment number | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CompanyFiscalInfoAddressResponse.new(
  object: null,
  street1: Calle 13,
  street2: Navarte,
  city: Cuauhtémoc,
  state: Ciudad de México,
  country: MX,
  postal_code: 3072,
  external_number: 123,
  internal_number: 123
)
```

