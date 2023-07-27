# Conekta::OrderResponseShippingContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **receiver** | **String** |  | [optional] |
| **between_streets** | **String** |  | [optional] |
| **address** | [**CustomerShippingContactsResponseAddress**](CustomerShippingContactsResponseAddress.md) |  | [optional] |
| **parent_id** | **String** |  | [optional] |
| **default** | **Boolean** |  | [optional] |
| **deleted** | **Boolean** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderResponseShippingContact.new(
  created_at: 1675715413,
  id: adr_1234567890,
  object: shipping_contact,
  phone: +525511223344,
  receiver: Marvin Fuller,
  between_streets: Ackerman Crescent,
  address: null,
  parent_id: null,
  default: false,
  deleted: false
)
```

