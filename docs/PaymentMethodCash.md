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
  barcode_url: https://barcodes.conekta.com/644ebf80f2243197aad6cd8810375b905b613dbe.png,
  expires_at: 0,
  product_type: bbva_cash_in,
  service_name: store,
  store: 10MON50EDI,
  store_name: wallmart,
  customer_ip_address: 0.0.0.0
)
```

