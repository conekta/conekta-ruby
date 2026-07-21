# Conekta::ResendEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhooks_ids** | **Array&lt;String&gt;** | webhooks ids to resend event |  |

## Example

```ruby
require 'conekta'

instance = Conekta::ResendEventRequest.new(
  webhooks_ids: [6307a60c41de27127515a575, 6307a60c41de27127515a571]
)
```

