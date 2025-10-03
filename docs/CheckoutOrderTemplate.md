# Conekta::CheckoutOrderTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | It is the currency in which the order will be created. It must be a valid ISO 4217 currency code. |  |
| **customer_info** | [**CheckoutOrderTemplateCustomerInfo**](CheckoutOrderTemplateCustomerInfo.md) |  | [optional] |
| **line_items** | [**Array&lt;Product&gt;**](Product.md) | They are the products to buy. Each contains the \&quot;unit price\&quot; and \&quot;quantity\&quot; parameters that are used to calculate the total amount of the order. |  |
| **metadata** | **Hash&lt;String, Object&gt;** | It is a set of key-value pairs that you can attach to the order. It can be used to store additional information about the order in a structured format. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::CheckoutOrderTemplate.new(
  currency: MXN,
  customer_info: null,
  line_items: null,
  metadata: {&quot;key&quot;:&quot;value&quot;}
)
```

