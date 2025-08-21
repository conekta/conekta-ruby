# Conekta::WebhookLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **failed_attempts** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **last_attempted_at** | **Integer** |  | [optional] |
| **last_http_response_status** | **Integer** |  | [optional] |
| **object** | **String** |  | [optional] |
| **response_data** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::WebhookLog.new(
  failed_attempts: 10,
  id: webhl_2svd2sh6GbqzyWBNZ,
  last_attempted_at: 1669651274,
  last_http_response_status: 200,
  object: webhook_log,
  response_data: {&quot;amount&quot;:3000,&quot;payable&quot;:true},
  url: https://username:password@mockoon.conekta.io/payments-api/cash/merchant_approval
)
```

