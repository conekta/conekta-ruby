# Conekta::OrderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charges** | [**Array&lt;ChargeRequest&gt;**](ChargeRequest.md) | List of [charges](https://developers.conekta.com/v2.1.0/reference/orderscreatecharge) that are applied to the order | [optional] |
| **checkout** | [**CheckoutRequest**](CheckoutRequest.md) |  | [optional] |
| **currency** | **String** | Currency with which the payment will be made. It uses the 3-letter code of the [International Standard ISO 4217.](https://es.wikipedia.org/wiki/ISO_4217) |  |
| **customer_info** | [**OrderRequestCustomerInfo**](OrderRequestCustomerInfo.md) |  |  |
| **discount_lines** | [**Array&lt;OrderDiscountLinesRequest&gt;**](OrderDiscountLinesRequest.md) | List of [discounts](https://developers.conekta.com/v2.1.0/reference/orderscreatediscountline) that are applied to the order. You must have at least one discount. | [optional] |
| **fiscal_entity** | [**OrderFiscalEntityRequest**](OrderFiscalEntityRequest.md) |  | [optional] |
| **line_items** | [**Array&lt;Product&gt;**](Product.md) | List of [products](https://developers.conekta.com/v2.1.0/reference/orderscreateproduct) that are sold in the order. You must have at least one product. |  |
| **metadata** | **Hash&lt;String, Object&gt;** | Metadata associated with the order | [optional] |
| **needs_shipping_contact** | **Boolean** | Allows you to fill out the shipping information at checkout | [optional] |
| **pre_authorize** | **Boolean** | Indicates whether the order charges must be preauthorized | [optional][default to false] |
| **processing_mode** | **String** | Indicates the processing mode for the order, either ecommerce, recurrent or validation. | [optional] |
| **return_url** | **String** | Indicates the redirection callback upon completion of the 3DS2 flow. | [optional] |
| **shipping_contact** | [**CustomerShippingContacts**](CustomerShippingContacts.md) |  | [optional] |
| **shipping_lines** | [**Array&lt;ShippingRequest&gt;**](ShippingRequest.md) | List of [shipping costs](https://developers.conekta.com/v2.1.0/reference/orderscreateshipping). If the online store offers digital products. | [optional] |
| **tax_lines** | [**Array&lt;OrderTaxRequest&gt;**](OrderTaxRequest.md) | List of [taxes](https://developers.conekta.com/v2.1.0/reference/orderscreatetaxes) that are applied to the order. | [optional] |
| **three_ds_mode** | **String** | Indicates the 3DS2 mode for the order, either smart or strict. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderRequest.new(
  charges: null,
  checkout: null,
  currency: MXN,
  customer_info: null,
  discount_lines: null,
  fiscal_entity: null,
  line_items: null,
  metadata: null,
  needs_shipping_contact: false,
  pre_authorize: null,
  processing_mode: ecommerce,
  return_url: https://my-website.com,
  shipping_contact: null,
  shipping_lines: null,
  tax_lines: null,
  three_ds_mode: null
)
```

