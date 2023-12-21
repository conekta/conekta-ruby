# Conekta::Customer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **antifraud_info** | [**CustomerAntifraudInfo**](CustomerAntifraudInfo.md) |  | [optional] |
| **corporate** | **Boolean** | It is a value that allows identifying if the email is corporate or not. | [optional][default to false] |
| **custom_reference** | **String** | It is an undefined value. | [optional] |
| **email** | **String** | An email address is a series of customizable characters followed by a universal Internet symbol, the at symbol (@), the name of a host server, and a web domain ending (.mx, .com, .org, . net, etc). |  |
| **default_payment_source_id** | **String** | It is a parameter that allows to identify in the response, the Conekta ID of a payment method (payment_id) | [optional] |
| **default_shipping_contact_id** | **String** | It is a parameter that allows to identify in the response, the Conekta ID of the shipping address (shipping_contact) | [optional] |
| **fiscal_entities** | [**Array&lt;CustomerFiscalEntitiesRequest&gt;**](CustomerFiscalEntitiesRequest.md) |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **name** | **String** | Client&#39;s name |  |
| **payment_sources** | [**Array&lt;CustomerPaymentMethodsRequest&gt;**](CustomerPaymentMethodsRequest.md) | Contains details of the payment methods that the customer has active or has used in Conekta | [optional] |
| **phone** | **String** | Is the customer&#39;s phone number |  |
| **plan_id** | **String** | Contains the ID of a plan, which could together with name, email and phone create a client directly to a subscription | [optional] |
| **shipping_contacts** | [**Array&lt;CustomerShippingContacts&gt;**](CustomerShippingContacts.md) | Contains the detail of the shipping addresses that the client has active or has used in Conekta | [optional] |
| **subscription** | [**SubscriptionRequest**](SubscriptionRequest.md) |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::Customer.new(
  antifraud_info: null,
  corporate: false,
  custom_reference: null,
  email: miguel@gmail.com,
  default_payment_source_id: src_1a2b3c4d5e6f7g8h,
  default_shipping_contact_id: ship_cont_1a2b3c4d5e6f7g8h,
  fiscal_entities: null,
  metadata: null,
  name: miguel,
  payment_sources: null,
  phone: 5215555555555,
  plan_id: plan_987234823,
  shipping_contacts: null,
  subscription: null
)
```

