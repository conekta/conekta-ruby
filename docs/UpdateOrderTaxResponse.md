# Conekta::UpdateOrderTaxResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount to be collected for tax in cents |  |
| **description** | **String** | description or tax&#39;s name |  |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **id** | **String** |  |  |
| **object** | **String** |  | [optional] |
| **parent_id** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::UpdateOrderTaxResponse.new(
  amount: 100,
  description: testing,
  metadata: {key&#x3D;value},
  id: tax_lin_2tQ8dC5mg1UADmVPo,
  object: tax_line,
  parent_id: ord_2tPAmKCEJqh8RE6nY
)
```

