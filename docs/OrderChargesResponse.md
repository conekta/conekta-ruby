# Conekta::OrderChargesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_more** | **Boolean** | Indicates if there are more pages to be requested |  |
| **object** | **String** | Object type, in this case is list |  |
| **data** | [**Array&lt;ChargesDataResponse&gt;**](ChargesDataResponse.md) |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderChargesResponse.new(
  has_more: false,
  object: list,
  data: null
)
```

