# Conekta::ChargeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  | [optional] |
| **channel** | [**ChargeResponseChannel**](ChargeResponseChannel.md) |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **device_fingerprint** | **String** |  | [optional] |
| **failure_code** | **String** |  | [optional] |
| **failure_message** | **String** |  | [optional] |
| **fee** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **livemode** | **Boolean** |  | [optional] |
| **object** | **String** |  | [optional] |
| **order_id** | **String** |  | [optional] |
| **paid_at** | **Integer** |  | [optional] |
| **payment_method** | [**ChargeResponsePaymentMethod**](ChargeResponsePaymentMethod.md) |  | [optional] |
| **reference_id** | **String** | Reference ID of the charge | [optional] |
| **refunds** | [**ChargeResponseRefunds**](ChargeResponseRefunds.md) |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::ChargeResponse.new(
  amount: 4321,
  channel: null,
  created_at: 1676386026,
  currency: MXN,
  customer_id: null,
  description: Payment from order,
  device_fingerprint: 6FR3chaU4Y1nGAW5NAGd1rcjAKa142Ba,
  failure_code: suspected_fraud,
  failure_message: Este cargo ha sido declinado porque el comportamiento del comprador es sospechoso.,
  fee: 1160,
  id: 63efa757cf65380001aec040,
  livemode: null,
  object: null,
  order_id: ord_2tN73UdUSNrYRPD9r,
  paid_at: 1676390742,
  payment_method: null,
  reference_id: ref_2tN73UdUSNrYRPD9r,
  refunds: null,
  status: pending_payment
)
```

