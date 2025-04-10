# Conekta::PaymentMethodCashResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **id** | **String** |  |  |
| **object** | **String** |  |  |
| **created_at** | **Integer** |  |  |
| **parent_id** | **String** |  | [optional] |
| **agreements** | [**Array&lt;PaymentMethodCashResponseAllOfAgreements&gt;**](PaymentMethodCashResponseAllOfAgreements.md) |  | [optional] |
| **reference** | **String** |  | [optional] |
| **barcode** | **String** |  | [optional] |
| **barcode_url** | **String** | URL to the barcode image, reference is the same as barcode | [optional] |
| **expires_at** | **Integer** |  | [optional] |
| **provider** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::PaymentMethodCashResponse.new(
  type: null,
  id: src_2s8K1B3PBKDontpi9,
  object: payment_source,
  created_at: 1675715413,
  parent_id: cus_2s8K1B3PBKDontpi8,
  agreements: null,
  reference: 93000262276908,
  barcode: 93000262276908,
  barcode_url: https://barcodes.conekta.com/644ebf80f2243197aad6cd8810375b905b613dbe.png,
  expires_at: 1742483424,
  provider: Cash
)
```

