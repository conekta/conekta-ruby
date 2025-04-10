# Conekta::WebhookUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Here you must place the URL of your Webhook remember that you must program what you will do with the events received. Also do not forget to handle the HTTPS protocol for greater security. | [optional] |
| **subscribed_events** | **Array&lt;String&gt;** | events that will be sent to the webhook | [optional] |
| **active** | **Boolean** | whether the webhook is active or not | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::WebhookUpdateRequest.new(
  url: https://webhook.site/89277eaa-a8e4-4306-8dc5-f55c80703dc8,
  subscribed_events: customer.created,
  active: true
)
```

