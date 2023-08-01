# Conekta::Page

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_url** | **String** | URL of the next page. | [optional] |
| **previous_page_url** | **String** | Url of the previous page. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::Page.new(
  next_page_url: https://api.conekta.io/resources?limit&#x3D;10&amp;next&#x3D;chrg_1,
  previous_page_url: https://api.conekta.io/resources?limit&#x3D;10&amp;previous&#x3D;chrg_1
)
```

