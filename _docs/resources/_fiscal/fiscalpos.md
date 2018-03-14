---
resource: fiscalpos
permalink: /docs/resources/fiscalpos/
section: Fiscal
partOf: company
attributes:
  - name: number
  - name: pos_type
    valuetype: fiscal_printer | electronic | manual_a | manual_b | manual_c | manual_e
  - name: status
  - name: fiscaltoken
  - name: max_amount_per_invoice
    crud: read
  - name: max_items_per_invoice
    crud: read
  - name: default
    crud: create
  - name: created_at
    crud: read
    valuetype: datetimew3c
  - name: updated_at
    crud: read
    valuetype: datetimew3c
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
relationships: null
filters: null
---

#### Special entry points

Actualiza datos de la AFIP
`GET`{: .get} [...]/v1/companies/{company_id}/fiscalpos/update

##### Token fiscalpos

- Sólo hay token cuando `type=fiscal_printer`{: .code}
- Si fiscaltoken es seteado a "", se genera un nuevo fiscaltoken.

##### Condiciones

- Si `max_amount_per_invoice` o `max_items_per_invoice` se setean en 0, implicará no tener límites.
- Si `fiscaltoken` es seteado a '', se genera un nuevo `fiscaltoken`.
- Sólo hay token cuando `type=fiscal_printer`

##### Observaciones

- Se elimina la relación con company ya que esta información se envía en el token.
