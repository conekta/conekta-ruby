# Conekta::CustomerInfoResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **corporate** | **Boolean** |  | [optional][default to false] |
| **object** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CustomerInfoResponse.new(
  name: DevTest,
  email: test@conekta.com,
  phone: 5522997233,
  corporate: null,
  object: customer_info
)
```

