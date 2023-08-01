# Conekta::GetOrdersResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;OrderResponse&gt;**](OrderResponse.md) |  |  |
| **has_more** | **Boolean** | Indicates if there are more pages to be requested |  |
| **object** | **String** | Object type, in this case is list |  |
| **next_page_url** | **String** | URL of the next page. | [optional] |
| **previous_page_url** | **String** | Url of the previous page. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::GetOrdersResponse.new(
  data: null,
  has_more: false,
  object: list,
  next_page_url: https://api.conekta.io/resources?limit&#x3D;10&amp;next&#x3D;chrg_1,
  previous_page_url: https://api.conekta.io/resources?limit&#x3D;10&amp;previous&#x3D;chrg_1
)
```

