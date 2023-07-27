# Conekta::UpdateProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **antifraud_info** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **description** | **String** |  | [optional] |
| **sku** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **unit_price** | **Integer** |  | [optional] |
| **quantity** | **Integer** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **brand** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::UpdateProduct.new(
  antifraud_info: null,
  description: null,
  sku: null,
  name: Box of Cohiba S1s,
  unit_price: 20000,
  quantity: 1,
  tags: null,
  brand: null,
  metadata: null
)
```

