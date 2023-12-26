# Conekta::CustomerResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **antifraud_info** | [**CustomerAntifraudInfoResponse**](CustomerAntifraudInfoResponse.md) |  | [optional] |
| **corporate** | **Boolean** | true if the customer is a company | [optional] |
| **created_at** | **Integer** | Creation date of the object |  |
| **custom_reference** | **String** | Custom reference | [optional] |
| **default_fiscal_entity_id** | **String** |  | [optional] |
| **default_shipping_contact_id** | **String** |  | [optional] |
| **default_payment_source_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **fiscal_entities** | [**CustomerFiscalEntitiesResponse**](CustomerFiscalEntitiesResponse.md) |  | [optional] |
| **id** | **String** | Customer&#39;s ID |  |
| **livemode** | **Boolean** | true if the object exists in live mode or the value false if the object exists in test mode |  |
| **name** | **String** | Customer&#39;s name |  |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **object** | **String** |  |  |
| **payment_sources** | [**CustomerPaymentMethodsResponse**](CustomerPaymentMethodsResponse.md) |  | [optional] |
| **phone** | **String** | Customer&#39;s phone number | [optional] |
| **shipping_contacts** | [**CustomerResponseShippingContacts**](CustomerResponseShippingContacts.md) |  | [optional] |
| **subscription** | [**SubscriptionResponse**](SubscriptionResponse.md) |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CustomerResponse.new(
  antifraud_info: null,
  corporate: null,
  created_at: 1485151007,
  custom_reference: custom_reference,
  default_fiscal_entity_id: fis_ent_2tKqqAfqPi21oCmEJ,
  default_shipping_contact_id: ship_cont_2tKZsTYcsryyu7Ah8,
  default_payment_source_id: src_2tHJfJ79KyUwpxTio,
  email: Felipe@gmail.com,
  fiscal_entities: null,
  id: cus_2tHJfJ79KyUwpxTik,
  livemode: true,
  name: Felipe,
  metadata: null,
  object: customer,
  payment_sources: null,
  phone: +5215555555555,
  shipping_contacts: null,
  subscription: null
)
```

