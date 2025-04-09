# Conekta::ApiKeyCreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Indicates if the api key is active | [optional] |
| **created_at** | **Integer** | Unix timestamp in seconds of when the api key was created | [optional] |
| **updated_at** | **Integer** | Unix timestamp in seconds of when the api key was last updated | [optional] |
| **deactivated_at** | **Integer** | Unix timestamp in seconds of when the api key was deleted | [optional] |
| **last_used_at** | **Integer** | Unix timestamp in seconds with the api key was used | [optional] |
| **description** | **String** | A name or brief explanation of what this api key is used for | [optional] |
| **id** | **String** | Unique identifier of the api key | [optional] |
| **livemode** | **Boolean** | Indicates if the api key is in production | [optional] |
| **object** | **String** | Object name, value is &#39;api_key&#39; | [optional] |
| **prefix** | **String** | The first few characters of the authentication_token | [optional] |
| **role** | **String** | Indicates if the api key is private or public | [optional] |
| **authentication_token** | **String** | It is occupied as a user when authenticated with basic authentication, with a blank password. This value will only appear once, in the request to create a new key. Copy and save it in a safe place. | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::ApiKeyCreateResponse.new(
  active: true,
  created_at: 1684167881,
  updated_at: 1684167923,
  deactivated_at: null,
  last_used_at: null,
  description: online store,
  id: 64625cc9f3e02c00163f5e4d,
  livemode: false,
  object: api_key,
  prefix: key_rp,
  role: private,
  authentication_token: key_rpHzxufNgjFCdprEEFZRTKi
)
```

