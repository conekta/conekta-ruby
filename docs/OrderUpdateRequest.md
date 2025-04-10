# Conekta::OrderUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charges** | [**Array&lt;ChargeRequest&gt;**](ChargeRequest.md) |  | [optional] |
| **checkout** | [**CheckoutRequest**](CheckoutRequest.md) |  | [optional] |
| **currency** | **String** | Currency with which the payment will be made. It uses the 3-letter code of the [International Standard ISO 4217.](https://es.wikipedia.org/wiki/ISO_4217) | [optional] |
| **customer_info** | [**OrderUpdateRequestCustomerInfo**](OrderUpdateRequestCustomerInfo.md) |  | [optional] |
| **discount_lines** | [**Array&lt;OrderDiscountLinesRequest&gt;**](OrderDiscountLinesRequest.md) | List of [discounts](https://developers.conekta.com/v2.2.0/reference/orderscreatediscountline) that are applied to the order. You must have at least one discount. | [optional] |
| **fiscal_entity** | [**OrderUpdateFiscalEntityRequest**](OrderUpdateFiscalEntityRequest.md) |  | [optional] |
| **line_items** | [**Array&lt;Product&gt;**](Product.md) | List of [products](https://developers.conekta.com/v2.2.0/reference/orderscreateproduct) that are sold in the order. You must have at least one product. | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **pre_authorize** | **Boolean** | Indicates whether the order charges must be preauthorized | [optional][default to false] |
| **shipping_contact** | [**CustomerShippingContacts**](CustomerShippingContacts.md) |  | [optional] |
| **shipping_lines** | [**Array&lt;ShippingRequest&gt;**](ShippingRequest.md) | List of [shipping costs](https://developers.conekta.com/v2.2.0/reference/orderscreateshipping). If the online store offers digital products. | [optional] |
| **tax_lines** | [**Array&lt;OrderTaxRequest&gt;**](OrderTaxRequest.md) |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderUpdateRequest.new(
  charges: null,
  checkout: null,
  currency: MXN,
  customer_info: null,
  discount_lines: null,
  fiscal_entity: null,
  line_items: null,
  metadata: null,
  pre_authorize: null,
  shipping_contact: null,
  shipping_lines: null,
  tax_lines: null
)
```

