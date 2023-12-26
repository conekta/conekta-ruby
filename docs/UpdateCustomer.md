# Conekta::UpdateCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **antifraud_info** | [**UpdateCustomerAntifraudInfo**](UpdateCustomerAntifraudInfo.md) |  | [optional] |
| **default_payment_source_id** | **String** | It is a parameter that allows to identify in the response, the Conekta ID of a payment method (payment_id) | [optional] |
| **email** | **String** | An email address is a series of customizable characters followed by a universal Internet symbol, the at symbol (@), the name of a host server, and a web domain ending (.mx, .com, .org, . net, etc). | [optional] |
| **name** | **String** | Client&#39;s name | [optional] |
| **phone** | **String** | Is the customer&#39;s phone number | [optional] |
| **plan_id** | **String** | Contains the ID of a plan, which could together with name, email and phone create a client directly to a subscription | [optional] |
| **default_shipping_contact_id** | **String** | It is a parameter that allows to identify in the response, the Conekta ID of the shipping address (shipping_contact) | [optional] |
| **corporate** | **Boolean** | It is a value that allows identifying if the email is corporate or not. | [optional][default to false] |
| **custom_reference** | **String** | It is an undefined value. | [optional] |
| **fiscal_entities** | [**Array&lt;CustomerFiscalEntitiesRequest&gt;**](CustomerFiscalEntitiesRequest.md) |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **payment_sources** | [**Array&lt;CustomerPaymentMethodsRequest&gt;**](CustomerPaymentMethodsRequest.md) | Contains details of the payment methods that the customer has active or has used in Conekta | [optional] |
| **shipping_contacts** | [**Array&lt;CustomerShippingContacts&gt;**](CustomerShippingContacts.md) | Contains the detail of the shipping addresses that the client has active or has used in Conekta | [optional] |
| **subscription** | [**SubscriptionRequest**](SubscriptionRequest.md) |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::UpdateCustomer.new(
  antifraud_info: null,
  default_payment_source_id: src_1a2b3c4d5e6f7g8h,
  email: miguel@gmail.com,
  name: miguel,
  phone: +5215555555555,
  plan_id: plan_987234823,
  default_shipping_contact_id: ship_cont_1a2b3c4d5e6f7g8h,
  corporate: false,
  custom_reference: null,
  fiscal_entities: null,
  metadata: null,
  payment_sources: null,
  shipping_contacts: null,
  subscription: null
)
```

