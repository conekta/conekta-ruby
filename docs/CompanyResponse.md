# Conekta::CompanyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the company. |  |
| **name** | **String** | The name of the company. |  |
| **active** | **Boolean** | Indicates if the company is active. |  |
| **account_status** | **String** | The current status of the company&#39;s account. |  |
| **parent_company_id** | **String** | The identifier of the parent company, if any. | [optional] |
| **onboarding_status** | **String** | The current status of the company&#39;s onboarding process. |  |
| **documents** | [**Array&lt;CompanyResponseDocumentsInner&gt;**](CompanyResponseDocumentsInner.md) | A list of documents related to the company. |  |
| **created_at** | **Integer** | Timestamp of when the company was created. |  |
| **object** | **String** | The type of object, typically \&quot;company\&quot;. |  |

## Example

```ruby
require 'conekta'

instance = Conekta::CompanyResponse.new(
  id: 6827305a1ec60400015eb116,
  name: test,
  active: false,
  account_status: signed_up,
  parent_company_id: 680bf1da38716d00013543bc,
  onboarding_status: pending,
  documents: null,
  created_at: 1748968241,
  object: company
)
```

