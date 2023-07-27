# Conekta::CustomerShippingContactsAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street1** | **String** |  | [optional] |
| **street2** | **String** |  | [optional] |
| **postal_code** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **country** | **String** | this field follows the [ISO 3166-1 alpha-2 standard](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) | [optional] |
| **residential** | **Boolean** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CustomerShippingContactsAddress.new(
  street1: avenida siempre viva,
  street2: fake street,
  postal_code: 06100,
  city: Ciudad de Mexico,
  state: Ciudad de Mexico,
  country: MX,
  residential: true
)
```

