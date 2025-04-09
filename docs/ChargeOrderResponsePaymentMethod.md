# Conekta::ChargeOrderResponsePaymentMethod

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'conekta'

Conekta::ChargeOrderResponsePaymentMethod.openapi_one_of
# =>
# [
#   :'PaymentMethodBankTransfer',
#   :'PaymentMethodBnplPayment',
#   :'PaymentMethodCard',
#   :'PaymentMethodCash'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'conekta'

Conekta::ChargeOrderResponsePaymentMethod.openapi_discriminator_name
# => :'object'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'conekta'

Conekta::ChargeOrderResponsePaymentMethod.openapi_discriminator_mapping
# =>
# {
#   :'bank_transfer_payment' => :'PaymentMethodBankTransfer',
#   :'bnpl_payment' => :'PaymentMethodBnplPayment',
#   :'card_payment' => :'PaymentMethodCard',
#   :'cash_payment' => :'PaymentMethodCash'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'conekta'

Conekta::ChargeOrderResponsePaymentMethod.build(data)
# => #<PaymentMethodBankTransfer:0x00007fdd4aab02a0>

Conekta::ChargeOrderResponsePaymentMethod.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PaymentMethodBankTransfer`
- `PaymentMethodBnplPayment`
- `PaymentMethodCard`
- `PaymentMethodCash`
- `nil` (if no type matches)

