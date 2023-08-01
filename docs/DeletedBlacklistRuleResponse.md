# Conekta::DeletedBlacklistRuleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Blacklist rule id | [optional] |
| **field** | **String** | field used for blacklists rule deleted | [optional] |
| **value** | **String** | value used for blacklists rule deleted | [optional] |
| **description** | **String** | use an description for blacklisted rule | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::DeletedBlacklistRuleResponse.new(
  id: 2fw8EWJusiRrxdPzT,
  field: email,
  value: email@example.com,
  description: banned customer example@example.com
)
```

