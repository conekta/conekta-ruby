# Conekta::UpdateCustomerAntifraudInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_created_at** | **Integer** |  | [optional] |
| **first_paid_at** | **Integer** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::UpdateCustomerAntifraudInfo.new(
  account_created_at: 1484040996,
  first_paid_at: 1485151007
)
```

