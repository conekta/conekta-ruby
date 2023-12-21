# Conekta::EventResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Integer** |  | [optional] |
| **data** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **id** | **String** |  | [optional] |
| **livemode** | **Boolean** |  | [optional] |
| **object** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **webhook_logs** | [**Array&lt;WebhookLog&gt;**](WebhookLog.md) |  | [optional] |
| **webhook_status** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::EventResponse.new(
  created_at: 1661445644,
  data: {&quot;action&quot;:&quot;ping&quot;,&quot;livemode&quot;:true},
  id: 6307a60c41de27127515a575,
  livemode: true,
  object: event,
  type: webhook_ping,
  webhook_logs: null,
  webhook_status: successful
)
```

