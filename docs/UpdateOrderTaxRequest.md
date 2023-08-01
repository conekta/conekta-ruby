# Conekta::UpdateOrderTaxRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount to be collected for tax in cents | [optional] |
| **description** | **String** | description or tax&#39;s name | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::UpdateOrderTaxRequest.new(
  amount: 100,
  description: testing,
  metadata: null
)
```

