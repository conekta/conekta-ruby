# Conekta::WebhookKeyUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Indicates if the webhook key is active | [optional][default to false] |

## Example

```ruby
require 'conekta'

instance = Conekta::WebhookKeyUpdateRequest.new(
  active: false
)
```

