# Conekta::WhitelistlistRuleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Whitelist rule id | [optional] |
| **field** | **String** | field used for whitelists rule | [optional] |
| **value** | **String** | value used for whitelists rule | [optional] |
| **description** | **String** | use an description for whitelisted rule | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::WhitelistlistRuleResponse.new(
  id: 2fw8EWJusiRrxdPzT,
  field: email,
  value: email@example.com,
  description: banned customer example@example.com
)
```

