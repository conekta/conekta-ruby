# Conekta::ChargebackResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **note** | **String** |  | [optional] |
| **followup_status** | **String** |  | [optional] |
| **response_from_client** | **String** |  | [optional] |
| **files** | [**Array&lt;ChargebackFileResponse&gt;**](ChargebackFileResponse.md) |  | [optional] |
| **object** | **String** |  | [optional] |
| **charge_id** | **String** |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **evidence_due_by** | **Integer** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::ChargebackResponse.new(
  id: chbk_2zPxWFUnGNLySoumn,
  status: lost,
  reason: unrecognized,
  note: null,
  followup_status: null,
  response_from_client: null,
  files: null,
  object: chargeback,
  charge_id: 6966a06c044243000156c24d,
  created_at: 1768846800,
  evidence_due_by: 1769126399
)
```

