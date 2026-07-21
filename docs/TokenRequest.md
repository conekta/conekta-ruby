# Conekta::TokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card** | [**TokenRequestCard**](TokenRequestCard.md) |  | [optional] |
| **checkout** | [**TokenRequestCheckout**](TokenRequestCheckout.md) |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::TokenRequest.new(
  card: null,
  checkout: null
)
```

