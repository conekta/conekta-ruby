# Conekta::WebhookKeyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the webhook key | [optional] |
| **active** | **Boolean** | Indicates if the webhook key is active | [optional] |
| **created_at** | **Integer** | Unix timestamp in seconds with the creation date of the webhook key | [optional] |
| **deactivated_at** | **Integer** | Unix timestamp in seconds with the deactivation date of the webhook key | [optional] |
| **public_key** | **String** | Public key to be used in the webhook | [optional] |
| **livemode** | **Boolean** | Indicates if the webhook key is in live mode | [optional] |
| **object** | **String** | Object name, value is webhook_key | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::WebhookKeyResponse.new(
  id: 62730ba6fb7dfd6a712f118e,
  active: true,
  created_at: 1577836800,
  deactivated_at: null,
  public_key: -----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqULpUc6D6mSAq5a0yLY/\noOjd1mWm6q+QI8y/FI4STr2F+XgKeNnMxSqnyFrHtKQ/ut4Zi45WFnJLfEQL7aW5\n67yE2dWyo6GaL7yZUfLC0Y3sHPGzaGtvDF36ISW7LliYNoMiA3Bx5/1Sr0G23pGW\n0Mp8IO1Nlz0sJWuU/d7zCz/UN6cl9g/BP4eaQ7deS56YuWcj5sTlwqFTlwN12kpA\nIzMZ7gnvYQnZTpPny5lben6QEuxTvZcPApcyOweiESjMnXfkfWOyuYtgMrbsU6oL\nA6sWa6j0pePW7AYeBqB4tyAlenkCSqzHg8bMk5Bm7hiT6I9Pls774lJbnOYmmuNE\n8QIDAQAB\n-----END PUBLIC KEY-----\n,
  livemode: false,
  object: webhook_key
)
```

