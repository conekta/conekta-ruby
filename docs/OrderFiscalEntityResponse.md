# Conekta::OrderFiscalEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**OrderFiscalEntityAddressResponse**](OrderFiscalEntityAddressResponse.md) |  |  |
| **email** | **String** | Email of the fiscal entity | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Metadata associated with the fiscal entity | [optional] |
| **name** | **String** | Name of the fiscal entity | [optional] |
| **tax_id** | **String** | Tax ID of the fiscal entity | [optional] |
| **id** | **String** | ID of the fiscal entity |  |
| **created_at** | **Integer** | The time at which the object was created in seconds since the Unix epoch |  |
| **object** | **String** |  |  |
| **phone** | **String** | Phone of the fiscal entity | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::OrderFiscalEntityResponse.new(
  address: null,
  email: test@gmail.com,
  metadata: null,
  name: Conekta Inc,
  tax_id: 324234234,
  id: fis_ent_2tN85VYaSMyDvjB3M,
  created_at: 1676328434,
  object: fiscal_entity,
  phone: +525511223344
)
```

