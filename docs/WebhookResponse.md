# Conekta::WebhookResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id of the webhook | [optional] |
| **description** | **String** | A name or brief explanation of what this webhook is used for | [optional] |
| **livemode** | **Boolean** | Indicates if the webhook is in production | [optional] |
| **active** | **Boolean** | Indicates if the webhook is actived or not | [optional] |
| **object** | **String** | Object name, value is &#39;webhook&#39; | [optional] |
| **status** | **String** | Indicates if the webhook is ready to receive events or failing | [optional] |
| **subscribed_events** | **Array&lt;String&gt;** | lists the events that will be sent to the webhook | [optional] |
| **url** | **String** | url or endpoint of the webhook | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::WebhookResponse.new(
  id: 6307a60c41de27127515a575,
  description: Server payments processor,
  livemode: true,
  active: true,
  object: event,
  status: listening,
  subscribed_events: [charge.created, charge.paid, charge.under_fraud_review, charge.fraudulent, charge.refunded, charge.preauthorized, charge.declined, charge.canceled, charge.reversed, charge.pending_confirmation],
  url: https://username:password@mockoon.conekta.io/payments-api/cash/merchant_approval
)
```

