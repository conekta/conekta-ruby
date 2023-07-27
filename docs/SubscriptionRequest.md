# Conekta::SubscriptionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** |  |  |
| **card_id** | **String** |  | [optional] |
| **trial_end** | **Integer** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::SubscriptionRequest.new(
  plan_id: f84gdgf5g48r15fd21g8w424fd1,
  card_id: src_2qUCNd5AyQqfPMBuV,
  trial_end: 1484040996
)
```

