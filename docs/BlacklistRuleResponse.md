# Conekta::BlacklistRuleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Blacklist rule id | [optional] |
| **field** | **String** | field used for blacklists rule | [optional] |
| **value** | **String** | value used for blacklists rule | [optional] |
| **description** | **String** | use an description for blacklisted rule | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::BlacklistRuleResponse.new(
  id: 2fw8EWJusiRrxdPzT,
  field: email,
  value: email@example.com,
  description: secure customer example@example.com
)
```

