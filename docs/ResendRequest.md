# Conekta::ResendRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhooks_ids** | **Array&lt;String&gt;** | webhooks ids to resend event |  |

## Example

```ruby
require 'conekta'

instance = Conekta::ResendRequest.new(
  webhooks_ids: [&quot;6307a60c41de27127515a575&quot;,&quot;6307a60c41de27127515a571&quot;]
)
```

