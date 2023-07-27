# Conekta::CreateRiskRulesData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the rule |  |
| **field** | **String** | Field to be used for the rule |  |
| **value** | **String** | Value to be used for the rule |  |

## Example

```ruby
require 'conekta'

instance = Conekta::CreateRiskRulesData.new(
  description: this client email was verified at 20/09/22 by internal process,
  field: email | phone | card_token,
  value: email@example.com | 818081808180 | src_2qUCNd5AyQqfPMBuV
)
```

