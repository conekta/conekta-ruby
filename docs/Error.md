# Conekta::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **details** | [**Array&lt;DetailsError&gt;**](DetailsError.md) |  | [optional] |
| **log_id** | **String** | log id | [optional] |
| **type** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::Error.new(
  details: null,
  log_id: 507f1f77bcf86cd799439011,
  type: authentication_error,
  object: error
)
```

