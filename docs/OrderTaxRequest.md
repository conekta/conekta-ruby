# Conekta::OrderTaxRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount to be collected for tax in cents |  |
| **description** | **String** | description or tax&#39;s name |  |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderTaxRequest.new(
  amount: 100,
  description: testing,
  metadata: {&quot;key&quot;:&quot;value&quot;}
)
```

