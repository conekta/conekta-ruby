# Conekta::DeleteApiKeysResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Indicates if the api key is active | [optional] |
| **created_at** | **Integer** | Unix timestamp in seconds of when the api key was created | [optional] |
| **description** | **String** | A name or brief explanation of what this api key is used for | [optional] |
| **livemode** | **Boolean** | Indicates if the api key is in production | [optional] |
| **prefix** | **String** | The first few characters of the authentication_token | [optional] |
| **id** | **String** | Unique identifier of the api key | [optional] |
| **object** | **String** | Object name, value is &#39;api_key&#39; | [optional] |
| **last_used_at** | **Integer** | Unix timestamp in seconds with the api key was used | [optional] |
| **role** | **String** | Indicates if the api key is private or public | [optional] |
| **deleted** | **Boolean** |  | [optional] |

## Example

```ruby
require 'conekta'

instance = Conekta::DeleteApiKeysResponse.new(
  active: true,
  created_at: 1684167881,
  description: online store,
  livemode: false,
  prefix: key_rp,
  id: 64625cc9f3e02c00163f5e4d,
  object: api_key,
  last_used_at: null,
  role: private,
  deleted: true
)
```

