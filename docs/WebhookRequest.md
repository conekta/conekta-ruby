# Conekta::WebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Here you must place the URL of your Webhook remember that you must program what you will do with the events received. Also do not forget to handle the HTTPS protocol for greater security. |  |
| **subscribed_events** | **Array&lt;String&gt;** | events that will be sent to the webhook | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::WebhookRequest.new(
  url: https://webhook.site/89277eaa-a8e4-4306-8dc5-f55c80703dc8,
  subscribed_events: customer.created
)
```

