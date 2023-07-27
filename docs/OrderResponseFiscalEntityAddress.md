# Conekta::OrderResponseFiscalEntityAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street1** | **String** |  |  |
| **street2** | **String** |  | [optional] |
| **postal_code** | **String** |  |  |
| **city** | **String** |  |  |
| **state** | **String** |  | [optional] |
| **country** | **String** | this field follows the [ISO 3166-1 alpha-2 standard](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) | [optional] |
| **residential** | **Boolean** |  | [optional] |
| **external_number** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderResponseFiscalEntityAddress.new(
  street1: avenida siempre viva,
  street2: fake street,
  postal_code: 06100,
  city: Ciudad de Mexico,
  state: Ciudad de Mexico,
  country: MX,
  residential: true,
  external_number: null,
  object: fiscal_entity_address
)
```

