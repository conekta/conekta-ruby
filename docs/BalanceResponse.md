# Conekta::BalanceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | The balance&#39;s available | [optional] |
| **cashout_retention_amount** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | The balance&#39;s cashout retention amount | [optional] |
| **conekta_retention** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | The balance&#39;s conekta retention | [optional] |
| **gateway** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | The balance&#39;s gateway | [optional] |
| **pending** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | The balance&#39;s pending | [optional] |
| **retained** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | The balance&#39;s retained | [optional] |
| **retention_amount** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | The balance&#39;s retention amount | [optional] |
| **target_collateral_amount** | **Object** | The balance&#39;s target collateral amount | [optional] |
| **target_retention_amount** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | The balance&#39;s target retention amount | [optional] |
| **temporarily_retained** | [**Array&lt;BalanceCommonField&gt;**](BalanceCommonField.md) | The balance&#39;s temporarily retained | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::BalanceResponse.new(
  available: null,
  cashout_retention_amount: null,
  conekta_retention: null,
  gateway: null,
  pending: null,
  retained: null,
  retention_amount: null,
  target_collateral_amount: null,
  target_retention_amount: null,
  temporarily_retained: null
)
```

