# Conekta::ApiKeyCreateResponseAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication_token** | **String** | It is occupied as a user when authenticated with basic authentication, with a blank password. This value will only appear once, in the request to create a new key. Copy and save it in a safe place. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::ApiKeyCreateResponseAllOf.new(
  authentication_token: key_rpHzxufNgjFCdprEEFZRTKi
)
```

