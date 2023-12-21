# Conekta::OrderNextActionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redirect_to_url** | [**OrderNextActionResponseRedirectToUrl**](OrderNextActionResponseRedirectToUrl.md) |  | [optional] |
| **type** | **String** | Indicates the type of action to be taken | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderNextActionResponse.new(
  redirect_to_url: null,
  type: redirect_to_url
)
```

