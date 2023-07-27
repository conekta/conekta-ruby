# Conekta::CustomerInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **email** | **String** |  |  |
| **phone** | **String** |  |  |
| **corporate** | **Boolean** |  | [optional] |
| **object** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CustomerInfo.new(
  name: DevTest,
  email: test@conekta.com,
  phone: 5522997233,
  corporate: null,
  object: customer_info
)
```

