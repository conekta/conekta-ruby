# Conekta::OrderRefundRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Amount to be refunded in cents |  |
| **expires_at** | **Integer** |  | [optional] |
| **reason** | **String** | Reason for the refund |  |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderRefundRequest.new(
  amount: 500,
  expires_at: 1553273553,
  reason: suspected_fraud
)
```

