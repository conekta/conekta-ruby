# Conekta::CheckoutOrderTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | It is the currency in which the order will be created. It must be a valid ISO 4217 currency code. |  |
| **customer_info** | [**OrderRequestCustomerInfo**](OrderRequestCustomerInfo.md) |  | [optional] |
| **line_items** | [**Array&lt;Product&gt;**](Product.md) | They are the products to buy. Each contains the \&quot;unit price\&quot; and \&quot;quantity\&quot; parameters that are used to calculate the total amount of the order. |  |
| **metadata** | **Hash&lt;String, Object&gt;** | It is a set of key-value pairs that you can attach to the order. It can be used to store additional information about the order in a structured format. | [optional] |
| **tax_lines** | [**Array&lt;OrderTaxRequest&gt;**](OrderTaxRequest.md) | List of [taxes](https://developers.conekta.com/v2.2.0/reference/orderscreatetaxes) that are applied to the order. | [optional] |
| **discount_lines** | [**Array&lt;OrderDiscountLinesRequest&gt;**](OrderDiscountLinesRequest.md) | List of [discounts](https://developers.conekta.com/v2.2.0/reference/orderscreatediscountline) that are applied to the order. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CheckoutOrderTemplate.new(
  currency: MXN,
  customer_info: null,
  line_items: null,
  metadata: {key&#x3D;value},
  tax_lines: null,
  discount_lines: null
)
```

