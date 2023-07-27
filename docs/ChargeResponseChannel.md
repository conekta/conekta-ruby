# Conekta::ChargeResponseChannel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment** | **String** |  | [optional] |
| **checkout_request_id** | **String** |  | [optional] |
| **checkout_request_type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::ChargeResponseChannel.new(
  segment: Checkout,
  checkout_request_id: 6fca054a-8519-4c43-971e-cea35cc519bb,
  checkout_request_type: HostedPayment,
  id: channel_2tNDzhA4Akmzj11AU
)
```

