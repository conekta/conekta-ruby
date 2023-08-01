# Conekta::CustomerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **antifraud_info** | [**CustomerAntifraudInfoResponse**](CustomerAntifraudInfoResponse.md) |  | [optional] |
| **corporate** | **Boolean** |  | [optional] |
| **created_at** | **Integer** |  |  |
| **custom_reference** | **String** |  | [optional] |
| **default_fiscal_entity_id** | **String** |  | [optional] |
| **default_shipping_contact_id** | **String** |  | [optional] |
| **default_payment_source_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **fiscal_entities** | [**CustomerFiscalEntitiesResponse**](CustomerFiscalEntitiesResponse.md) |  | [optional] |
| **id** | **String** |  |  |
| **livemode** | **Boolean** |  |  |
| **name** | **String** |  | [optional] |
| **object** | **String** |  |  |
| **payment_sources** | [**CustomerPaymentMethodsResponse**](CustomerPaymentMethodsResponse.md) |  | [optional] |
| **phone** | **String** |  | [optional] |
| **shipping_contacts** | [**CustomerResponseShippingContacts**](CustomerResponseShippingContacts.md) |  | [optional] |
| **subscription** | [**SubscriptionResponse**](SubscriptionResponse.md) |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CustomerResponse.new(
  antifraud_info: null,
  corporate: null,
  created_at: 1485151007,
  custom_reference: null,
  default_fiscal_entity_id: fis_ent_2tKqqAfqPi21oCmEJ,
  default_shipping_contact_id: ship_cont_2tKZsTYcsryyu7Ah8,
  default_payment_source_id: src_2tHJfJ79KyUwpxTio,
  email: Felipe@gmail.com,
  fiscal_entities: null,
  id: cus_2tHJfJ79KyUwpxTik,
  livemode: true,
  name: Felipe,
  object: customer,
  payment_sources: null,
  phone: +5215555555555,
  shipping_contacts: null,
  subscription: null
)
```

