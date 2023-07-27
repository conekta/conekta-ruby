# Conekta::ApiKeyUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Indicates if the webhook key is active | [optional] |
| **description** | **String** | A name or brief explanation of what this api key is used for | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::ApiKeyUpdateRequest.new(
  active: true,
  description: online store
)
```

