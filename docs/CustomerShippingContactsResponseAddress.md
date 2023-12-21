# Conekta::CustomerShippingContactsResponseAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional] |
| **street1** | **String** |  | [optional] |
| **street2** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **residential** | **Boolean** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CustomerShippingContactsResponseAddress.new(
  object: shipping_address,
  street1: Nuevo Leon 254,
  street2: Departamento 404,
  postal_code: 06100,
  city: Ciudad de Mexico,
  state: Ciudad de Mexico,
  country: MX,
  residential: true
)
```

