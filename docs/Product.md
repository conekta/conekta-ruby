# Conekta::Product

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **antifraud_info** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **brand** | **String** | The brand of the item. | [optional] |
| **description** | **String** | Short description of the item | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | It is a key/value hash that can hold custom fields. Maximum 100 elements and allows special characters. | [optional] |
| **name** | **String** | The name of the item. It will be displayed in the order. |  |
| **quantity** | **Integer** | The quantity of the item in the order. |  |
| **sku** | **String** | The stock keeping unit for the item. It is used to identify the item in the order. | [optional] |
| **tags** | **Array&lt;String&gt;** | List of tags for the item. It is used to identify the item in the order. | [optional] |
| **unit_price** | **Integer** | The price of the item in cents. |  |

## Example

```ruby
require 'conekta'

instance = Conekta::Product.new(
  antifraud_info: {&quot;key&quot;:&quot;value&quot;},
  brand: Cohiba,
  description: Imported From Mex.,
  metadata: {&quot;key&quot;:&quot;value&quot;},
  name: Box of Cohiba S1s,
  quantity: 1,
  sku: XYZ12345,
  tags: [&quot;food&quot;,&quot;mexican food&quot;],
  unit_price: 20000
)
```

