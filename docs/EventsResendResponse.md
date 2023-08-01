# Conekta::EventsResendResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **failed_attempts** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **last_attempted_at** | **Integer** |  | [optional] |
| **last_http_response_status** | **Integer** |  | [optional] |
| **response_data** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::EventsResendResponse.new(
  failed_attempts: 6,
  id: webhl_2svd2sh6GbqzyWBNZ,
  last_attempted_at: 1684265970,
  last_http_response_status: 405,
  response_data: {},
  url: https://username:password@mockoon.stg.conekta.io/payments-api/cash/merchant_approval
)
```

