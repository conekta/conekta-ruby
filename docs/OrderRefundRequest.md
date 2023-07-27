# Conekta::OrderRefundRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **expires_at** | **Integer** |  | [optional] |
| **reason** | **String** |  |  |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderRefundRequest.new(
  amount: 500,
  expires_at: 1553273553,
  reason: suspected_fraud
)
```

