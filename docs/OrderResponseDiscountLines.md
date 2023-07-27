# Conekta::OrderResponseDiscountLines

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_more** | **Boolean** | Indicates if there are more pages to be requested |  |
| **object** | **String** | Object type, in this case is list |  |
| **data** | [**Array&lt;DiscountLinesDataResponse&gt;**](DiscountLinesDataResponse.md) |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderResponseDiscountLines.new(
  has_more: false,
  object: list,
  data: null
)
```

