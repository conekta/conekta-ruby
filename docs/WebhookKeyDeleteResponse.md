# Conekta::WebhookKeyDeleteResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Indicates if the webhook key is active | [optional] |
| **created_at** | **Integer** | Unix timestamp in seconds with the creation date of the webhook key | [optional] |
| **deleted** | **Boolean** | Indicates if the webhook key is deleted | [optional] |
| **id** | **String** | Unique identifier of the webhook key | [optional] |
| **livemode** | **Boolean** | Indicates if the webhook key is in live mode | [optional] |
| **object** | **String** | Object name, value is webhook_key | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::WebhookKeyDeleteResponse.new(
  active: true,
  created_at: 1577836800,
  deleted: true,
  id: 62730ba6fb7dfd6a712f118e,
  livemode: false,
  object: webhook_key
)
```

