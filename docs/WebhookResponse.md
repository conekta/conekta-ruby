# Conekta::WebhookResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deleted** | **Boolean** |  | [optional] |
| **development_enabled** | **Boolean** |  | [optional] |
| **id** | **String** |  | [optional] |
| **livemode** | **Boolean** |  | [optional] |
| **object** | **String** |  | [optional] |
| **production_enabled** | **Boolean** |  | [optional] |
| **status** | **String** |  | [optional] |
| **subscribed_events** | **Array&lt;String&gt;** |  | [optional] |
| **synchronous** | **Boolean** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::WebhookResponse.new(
  deleted: false,
  development_enabled: false,
  id: 6307a60c41de27127515a575,
  livemode: true,
  object: event,
  production_enabled: true,
  status: listening,
  subscribed_events: [charge.created, charge.paid, charge.under_fraud_review, charge.fraudulent, charge.refunded, charge.preauthorized, charge.declined, charge.canceled, charge.reversed, charge.pending_confirmation],
  synchronous: false,
  url: https://username:password@mockoon.stg.conekta.io/payments-api/cash/merchant_approval
)
```

