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
  subscribed_events: [&quot;charge.created&quot;,&quot;charge.paid&quot;,&quot;charge.under_fraud_review&quot;,&quot;charge.fraudulent&quot;,&quot;charge.refunded&quot;,&quot;charge.preauthorized&quot;,&quot;charge.declined&quot;,&quot;charge.canceled&quot;,&quot;charge.reversed&quot;,&quot;charge.pending_confirmation&quot;],
  synchronous: false,
  url: https://username:password@mockoon.stg.conekta.io/payments-api/cash/merchant_approval
)
```

