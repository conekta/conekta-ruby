# Conekta::WebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Here you must place the URL of your Webhook remember that you must program what you will do with the events received. Also do not forget to handle the HTTPS protocol for greater security. |  |
| **synchronous** | **Boolean** | It is a value that allows to decide if the events will be synchronous or asynchronous. We recommend asynchronous &#x3D; false | [default to false] |

## Example

```ruby
require 'conekta'

instance = Conekta::WebhookRequest.new(
  url: https://webhook.site/89277eaa-a8e4-4306-8dc5-f55c80703dc8,
  synchronous: false
)
```

