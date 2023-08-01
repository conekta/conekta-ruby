# Conekta::OrderResponseCustomerInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **corporate** | **Boolean** |  | [optional][default to false] |
| **customer_id** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderResponseCustomerInfo.new(
  object: customer_info,
  name: DevTest,
  email: test@conekta.com,
  phone: 5522997233,
  corporate: null,
  customer_id: cus_23874283647
)
```

