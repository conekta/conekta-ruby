# Conekta::OrderNextActionResponseRedirectToUrl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | pay.conekta.com/{id} Indicates the url of the Conekta component to authenticate the flow through 3DS2. | [optional] |
| **return_url** | **String** | Indicates the url to which the 3DS2 flow returns at the end, when the integration is redirected. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderNextActionResponseRedirectToUrl.new(
  url: https://pay.conekta.com/6fca054a85194c43971ecea35cc519bb,
  return_url: https://my-website.com&quot;
)
```

