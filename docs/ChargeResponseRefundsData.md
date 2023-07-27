# Conekta::ChargeResponseRefundsData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **auth_code** | **String** |  | [optional] |
| **created_at** | **Integer** |  |  |
| **expires_at** | **Integer** | refund expiration date | [optional] |
| **id** | **String** |  |  |
| **object** | **String** |  |  |
| **status** | **String** | refund status | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::ChargeResponseRefundsData.new(
  amount: -15000,
  auth_code: 867372,
  created_at: 1678226878,
  expires_at: 1678226878,
  id: 6407b5bee1329a000175ba11,
  object: refund,
  status: pending
)
```

