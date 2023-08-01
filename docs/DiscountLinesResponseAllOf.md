# Conekta::DiscountLinesResponseAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The discount line id |  |
| **object** | **String** | The object name |  |
| **parent_id** | **String** | The order id |  |

## Example

```ruby
require 'conekta'

instance = Conekta::DiscountLinesResponseAllOf.new(
  id: dis_lin_2tQQ58HPgPw7StE8z,
  object: discount_line,
  parent_id: ord_2tPAmKCEJqh8RE6nY
)
```

