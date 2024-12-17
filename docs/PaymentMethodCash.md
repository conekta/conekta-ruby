# Conekta::PaymentMethodCash

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **object** | **String** |  |  |
| **agreement** | **String** | Agreement ID | [optional] |
| **auth_code** | **Integer** |  | [optional] |
| **cashier_id** | **String** |  | [optional] |
| **reference** | **String** |  | [optional] |
| **barcode_url** | **String** |  | [optional] |
| **expires_at** | **Integer** |  | [optional] |
| **product_type** | **String** | Product type, e.g. bbva_cash_in, cash_in, pespay_cash_in, etc. | [optional] |
| **service_name** | **String** |  | [optional] |
| **store** | **String** |  | [optional] |
| **store_name** | **String** |  | [optional] |
| **customer_ip_address** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodCash.new(
  type: null,
  object: payment_source,
  agreement: agreement_2tN73UdUSNrYRPD9r,
  auth_code: 542563,
  cashier_id: OINM01010,
  reference: 93000262276908,
  barcode_url: https://pt-common-s3-stg.s3.amazonaws.com/644ebf80f2243197aad6cd8810375b905b613dbe.png?X-Amz-Algorithm&#x3D;AWS4-HMAC-SHA256&amp;X-Amz-Credential&#x3D;ASIA3UN6375MP4SLLCWV%2F20230203%2Fus-east-1%2Fs3%2Faws4_request&amp;X-Amz-Date&#x3D;20230203T215750Z&amp;X-Amz-Expires&#x3D;604800&amp;X-Amz-Security-Token&#x3D;IQoJb3JpZ2luX2VjEH4aCXVzLWVhc3QtMSJGMEQCICd79cu7DYu%2F4%2B3HnVVswydgU9yHcE9kmQIIk2TLoZJrAiBVZ0HxVSeboK5lhdQSqADjwQF62XX35jhC%2F2riB0M8uCqQBAj2%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAIaDDc5OTgwMTA4MTY4OCIMXWZds9ZI5hzUdbeGKuQDFreMyeWnWWPqDuGZ2%2BHk6usCr%2Fl096%2FNJh9xtf8htLu56K%2FhWUTx%2BjiqFWM2O%2FF5zTS%2BIV6TqkLDZ%2BQ5Jo1miQrRmR57YDz6uP2Yd1mNZ1ouq5ipnNjUuu5UWCCBAmqyZQsrVmeMQpSV2IB%2BTERCCcW2SukFEYU%2F20%2Fzy5orsoZ8DxOW460IymR3cWBk5u3Xh2cV6Y1RdPEwDEThhqYEF5w%2ByKbLENloMsI%2FUm6sG5PPrO3yQOAP9aK2muLJs9lXQRU%2FL%2FSsmS4FKSUFOqlN6YU%2Bi2Y%2FyGIKAJT2VDkngvz5Sl%2Fadj0j%2BPKftVRV5FcEhySB6Rl%2BSkPN7kVQMJp6pS8hMJ6JCyEA%2BA3eWYdIfKgQhWVXAR4oCBfJ62DH8FU3a7WfSjjpTwfVkiReWen3GGCYfUWETTVKp46MKnJ9PG0CD3KzxKV8VfmEGc5krK%2FI%2F%2BDV2wtSa%2F9qf1%2BK1YYJIK9qZGb25ljUiGhTB4T%2BMUOSQFjetiWUoOJc5Q3Jz%2FXJbiTAMTST39MhdbCgiMgfrc8OGKN5DOVbex33Z7dn0xf%2FOCkSqurhLaG08efKQBdhLNS0RlE9hbg9yZ2ywwtQIF39fI6A7eeH0T11a5HMlvm51u4rAffPHRuEJfwJoIuj%2F2s3QzDg7%2FWeBjqmAbnPOlGfysjrDdvHyG7HVnaX02kdG%2BI3Q4PFOO4Mjaa3ocpjcfPT70%2BZ5a%2FSv5vP0jDLGrLToeM9%2BAUlNepptICRu23a1tLGW4ri0twPA%2FZ4JDTtUUUgdblyG8bKpcUTNp4oOsdmLLBz3FVyr4c2xQbDZSu2zYOtoOxB18W0AC6kIbsMWVU55Bf0mBhPeBWxGrtM4Kw1SgHHlt%2F8vetQi2OwtUcg08c%3D&amp;X-Amz-SignedHeaders&#x3D;host&amp;X-Amz-Signature&#x3D;d06dfa41550003359f2aabc8006063a80dfd806a13a54d244024946a76aa9abc,
  expires_at: 0,
  product_type: bbva_cash_in,
  service_name: OxxoPay,
  store: 10MON50EDI,
  store_name: OXXO,
  customer_ip_address: 0.0.0.0
)
```

