# Conekta::OrderResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The total amount to be collected in cents | [optional] |
| **amount_refunded** | **Integer** | The total amount refunded in cents | [optional] |
| **channel** | [**ChargeResponseChannel**](ChargeResponseChannel.md) |  | [optional] |
| **charges** | [**OrderResponseCharges**](OrderResponseCharges.md) |  | [optional] |
| **checkout** | [**OrderResponseCheckout**](OrderResponseCheckout.md) |  | [optional] |
| **created_at** | **Integer** | The time at which the object was created in seconds since the Unix epoch | [optional] |
| **currency** | **String** | The three-letter ISO 4217 currency code. The currency of the order. | [optional] |
| **customer_info** | [**OrderResponseCustomerInfo**](OrderResponseCustomerInfo.md) |  | [optional] |
| **discount_lines** | [**OrderResponseDiscountLines**](OrderResponseDiscountLines.md) |  | [optional] |
| **fiscal_entity** | [**OrderFiscalEntityResponse**](OrderFiscalEntityResponse.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **is_refundable** | **Boolean** |  | [optional] |
| **line_items** | [**OrderResponseProducts**](OrderResponseProducts.md) |  | [optional] |
| **livemode** | **Boolean** | Whether the object exists in live mode or test mode | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. | [optional] |
| **next_action** | [**OrderNextActionResponse**](OrderNextActionResponse.md) |  | [optional] |
| **object** | **String** | String representing the object’s type. Objects of the same type share the same value. | [optional] |
| **payment_status** | **String** | The payment status of the order. | [optional] |
| **processing_mode** | **String** | Indicates the processing mode for the order, either ecommerce, recurrent or validation. | [optional] |
| **shipping_contact** | [**OrderResponseShippingContact**](OrderResponseShippingContact.md) |  | [optional] |
| **updated_at** | **Integer** | The time at which the object was last updated in seconds since the Unix epoch | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderResponse.new(
  amount: 21605,
  amount_refunded: 0,
  channel: null,
  charges: null,
  checkout: null,
  created_at: 1676328434,
  currency: MXN,
  customer_info: null,
  discount_lines: null,
  fiscal_entity: null,
  id: ord_2tMtQQpDvfnNjiuFG,
  is_refundable: false,
  line_items: null,
  livemode: false,
  metadata: null,
  next_action: null,
  object: order,
  payment_status: paid,
  processing_mode: ecommerce,
  shipping_contact: null,
  updated_at: 1676328434
)
```

