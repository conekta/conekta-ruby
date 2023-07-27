# Conekta::CustomerShippingContactsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** |  | [optional] |
| **receiver** | **String** |  | [optional] |
| **between_streets** | **String** |  | [optional] |
| **address** | [**CustomerShippingContactsResponseAddress**](CustomerShippingContactsResponseAddress.md) |  | [optional] |
| **parent_id** | **String** |  | [optional] |
| **default** | **Boolean** |  | [optional] |
| **id** | **String** |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **object** | **String** |  | [optional] |
| **deleted** | **Boolean** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CustomerShippingContactsResponse.new(
  phone: +525511223344,
  receiver: Marvin Fuller,
  between_streets: Ackerman Crescent,
  address: null,
  parent_id: null,
  default: false,
  id: adr_1234567890,
  created_at: 1675715413,
  object: shipping_contact,
  deleted: false
)
```

