# Conekta::CustomerAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street1** | **String** |  |  |
| **street2** | **String** |  | [optional] |
| **postal_code** | **String** |  |  |
| **city** | **String** |  |  |
| **state** | **String** |  | [optional] |
| **country** | **String** | this field follows the [ISO 3166-1 alpha-2 standard](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) | [optional] |
| **residential** | **Boolean** |  | [optional][default to false] |
| **external_number** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CustomerAddress.new(
  street1: Nuevo Leon 254,
  street2: Departamento 404,
  postal_code: 06100,
  city: Ciudad de Mexico,
  state: Ciudad de Mexico,
  country: MX,
  residential: true,
  external_number: null
)
```

