# Conekta::Token

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card** | [**TokenCard**](TokenCard.md) |  | [optional] |
| **checkout** | [**TokenCheckout**](TokenCheckout.md) |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::Token.new(
  card: null,
  checkout: null
)
```

