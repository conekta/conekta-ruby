# Conekta::OrderResponseShippingContact

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
| **metadata** | **Hash&lt;String, Object&gt;** | Metadata associated with the shipping contact | [optional] |
| **object** | **String** |  | [optional] |
| **deleted** | **Boolean** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderResponseShippingContact.new(
  phone: +525511223344,
  receiver: Marvin Fuller,
  between_streets: Ackerman Crescent,
  address: null,
  parent_id: null,
  default: false,
  id: null,
  created_at: null,
  metadata: null,
  object: null,
  deleted: false
)
```

