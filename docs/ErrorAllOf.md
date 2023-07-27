# Conekta::ErrorAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **log_id** | **String** | log id | [optional] |
| **type** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::ErrorAllOf.new(
  log_id: 507f1f77bcf86cd799439011,
  type: authentication_error,
  object: error
)
```

