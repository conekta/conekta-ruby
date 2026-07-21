# Conekta::BalanceCommonFielsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The balance&#39;s amount | [optional] |
| **currency** | **String** | The balance&#39;s currency | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::BalanceCommonFielsResponse.new(
  amount: 100,
  currency: MXN
)
```

