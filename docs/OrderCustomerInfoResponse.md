# Conekta::OrderCustomerInfoResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_custom_reference** | **String** | Custom reference | [optional] |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **corporate** | **Boolean** |  | [optional][default to false] |
| **object** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderCustomerInfoResponse.new(
  customer_custom_reference: custom_reference,
  name: DevTest,
  email: test@conekta.com,
  phone: 5522997233,
  corporate: null,
  object: customer_info
)
```

