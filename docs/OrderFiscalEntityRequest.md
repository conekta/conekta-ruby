# Conekta::OrderFiscalEntityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**FiscalEntityAddress**](FiscalEntityAddress.md) |  |  |
| **email** | **String** | Email of the fiscal entity | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Metadata associated with the fiscal entity | [optional] |
| **name** | **String** | Name of the fiscal entity | [optional] |
| **phone** | **String** | Phone of the fiscal entity | [optional] |
| **tax_id** | **String** | Tax ID of the fiscal entity | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderFiscalEntityRequest.new(
  address: null,
  email: test@gmail.com,
  metadata: null,
  name: Conekta Inc,
  phone: +525511223344,
  tax_id: AAA010101AAA
)
```

