# Conekta::ChargeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** |  |  |
| **channel** | [**ChargeResponseChannel**](ChargeResponseChannel.md) |  | [optional] |
| **created_at** | **Integer** |  |  |
| **currency** | **String** |  |  |
| **customer_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **device_fingerprint** | **String** |  | [optional] |
| **failure_code** | **String** |  | [optional] |
| **failure_message** | **String** |  | [optional] |
| **id** | **String** | Charge ID |  |
| **livemode** | **Boolean** | Whether the charge was made in live mode or not |  |
| **object** | **String** |  |  |
| **order_id** | **String** | Order ID |  |
| **paid_at** | **Integer** | Payment date | [optional] |
| **payment_method** | [**ChargeResponsePaymentMethod**](ChargeResponsePaymentMethod.md) |  | [optional] |
| **reference_id** | **String** | Reference ID of the charge | [optional] |
| **refunds** | [**ChargeResponseRefunds**](ChargeResponseRefunds.md) |  | [optional] |
| **status** | **String** | Charge status |  |

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
  id: 63efa757cf65380001aec040,
  livemode: false,
  object: charge,
  order_id: ord_2tN73UdUSNrYRPD9r,
  paid_at: 1676390742,
  payment_method: null,
  reference_id: ref_2tN73UdUSNrYRPD9r,
  refunds: null,
  status: pending_payment
)
```

