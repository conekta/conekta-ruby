# Conekta::Pagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_more** | **Boolean** | Indicates if there are more pages to be requested |  |
| **object** | **String** | Object type, in this case is list |  |

## Example

```ruby
require 'conekta'

instance = Conekta::Pagination.new(
  has_more: false,
  object: list
)
```

