# Conekta::FiscalEntityAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street1** | **String** | Street name and number |  |
| **street2** | **String** | Street name and number | [optional] |
| **postal_code** | **String** | Postal code |  |
| **city** | **String** | City |  |
| **state** | **String** | State | [optional] |
| **country** | **String** | this field follows the [ISO 3166-1 alpha-2 standard](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) |  |
| **external_number** | **String** | External number |  |

## Example

```ruby
require 'conekta'

instance = Conekta::FiscalEntityAddress.new(
  street1: Nuevo Leon 254,
  street2: Departamento 404,
  postal_code: 06100,
  city: Ciudad de Mexico,
  state: Ciudad de Mexico,
  country: MX,
  external_number: 123
)
```

