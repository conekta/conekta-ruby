# Conekta::LogsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_more** | **Boolean** | True, if there are more pages. | [optional][readonly] |
| **object** | **String** | The object type | [optional][readonly] |
| **next_page_url** | **String** | URL of the next page. | [optional] |
| **previous_page_url** | **String** | Url of the previous page. | [optional] |
| **data** | [**Array&lt;LogsResponseData&gt;**](LogsResponseData.md) | set to page results. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::LogsResponse.new(
  has_more: null,
  object: null,
  next_page_url: null,
  previous_page_url: null,
  data: null
)
```

