# Conekta::UpdateFiscalEntityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**FiscalEntityRequestAddress**](FiscalEntityRequestAddress.md) |  | [optional] |
| **tax_id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **company_name** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::UpdateFiscalEntityRequest.new(
  address: null,
  tax_id: null,
  email: null,
  phone: null,
  metadata: null,
  company_name: conekta
)
```

