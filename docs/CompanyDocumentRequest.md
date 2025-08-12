# Conekta::CompanyDocumentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_classification** | **String** | Classification of the document.  | Tipo de archivo              | Descripción                                               | | :--------------------------- | :-------------------------------------------------------- | | &#x60;id_legal_representative&#x60;      | identificación oficial frente                             | | &#x60;id_legal_representative_back&#x60; | identificación oficial atrás                              | | &#x60;cfdi&#x60;                         | Prueba de situación fiscal                                | | &#x60;constitutive_act_basic&#x60;       | Acta constitutiva                                         | | &#x60;proof_of_address&#x60;             | Comprobante de domicilio del negocio                      | | &#x60;power_of_attonery&#x60;            | Poderes de representación                                 | | &#x60;deposit_account_cover&#x60;        | Carátula de la cuenta de depósito                         | | &#x60;permit_casino&#x60;                | Permiso ante SEGOB                                        | | &#x60;license_sanitation&#x60;           | Licencia sanitaria de COFEPRIS                            | | &#x60;registration_tourism&#x60;         | Inscripción ante el Registro Nacional de Turismo (SECTUR) |  |  |
| **content_type** | **String** | MIME type of the file. Allowed values depend on the &#x60;file_classification&#x60;. - &#x60;image/jpeg&#x60; - &#x60;image/png&#x60; - &#x60;application/pdf&#x60;  |  |
| **international** | **Boolean** | Indicates if the document is international. Defaults to false. | [optional] |
| **file_name** | **String** | Name of the file being uploaded. |  |
| **file_data** | **String** | Base64 encoded content of the file. |  |

## Example

```ruby
require 'conekta'

instance = Conekta::CompanyDocumentRequest.new(
  file_classification: id_legal_representative,
  content_type: application/pdf,
  international: false,
  file_name: example_document.pdf,
  file_data: [B@1dc7173
)
```

