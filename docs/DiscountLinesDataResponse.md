# Conekta::DiscountLinesDataResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount to be deducted from the total sum of all payments, in cents. |  |
| **code** | **String** | Discount code. |  |
| **type** | **String** | It can be &#39;loyalty&#39;, &#39;campaign&#39;, &#39;coupon&#39; o &#39;sign&#39; |  |
| **id** | **String** | The discount line id |  |
| **object** | **String** | The object name |  |
| **parent_id** | **String** | The order id |  |

## Example

```ruby
require 'conekta'

instance = Conekta::DiscountLinesDataResponse.new(
  amount: 500,
  code: 123,
  type: loyalty,
  id: dis_lin_2tQQ58HPgPw7StE8z,
  object: discount_line,
  parent_id: ord_2tPAmKCEJqh8RE6nY
)
```

