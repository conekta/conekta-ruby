# Conekta::OrderDiscountLinesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount to be deducted from the total sum of all payments, in cents. |  |
| **code** | **String** | Discount code. |  |
| **type** | **String** | It can be &#39;loyalty&#39;, &#39;campaign&#39;, &#39;coupon&#39; o &#39;sign&#39; |  |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderDiscountLinesRequest.new(
  amount: 500,
  code: 123,
  type: loyalty
)
```

