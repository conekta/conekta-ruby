# Conekta::RiskRulesData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | rule id | [optional] |
| **field** | **String** | field to be used for the rule | [optional] |
| **created_at** | **String** | rule creation date | [optional] |
| **value** | **String** | value to be used for the rule | [optional] |
| **is_global** | **Boolean** | if the rule is global | [optional] |
| **is_test** | **Boolean** | if the rule is test | [optional] |
| **description** | **String** | description of the rule | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::RiskRulesData.new(
  id: 618c3f2fdb8b8da9be376af9,
  field: email,
  created_at: 2021-11-10T21:52:47.339Z,
  value: email@example.com,
  is_global: false,
  is_test: false,
  description: secure customer example@example.com
)
```

