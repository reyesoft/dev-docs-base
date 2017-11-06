---
resource: quotations
permalink: /docs/resources/quotations/
attributes:
  - name: section
    crud: 'create,read'
    valuetype: sales | purchases
  - name: receipt_type
    crud: 'create,read'
    valuetype: quotation
  - name: receipt_volume
    crud: read
  - name: receipt_number
    crud: read
  - name: net
    crud: read
  - name: total
    crud: read
  - name: draft
  - name: status
    valuetype: draft | confirmed
  - name: show_amounts
    valuetype: true/false
  - name: observation
    crud: read
  - name: pdf_url
    crud: read
  - name: emission_date
    crud: read
    valuetype: datetimew3c
  - name: created_at
    crud: read
    valuetype: datetimew3c
  - name: updated_at
    crud: read
    valuetype: datetimew3c
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: entities
    hasMany: false
  - resource: currencies
    hasMany: false
  - resource: details
    hasMany: true
  - resource: receipts
    hasMany: false
  - resource: orders
    hasMany: true
filters:
  - attribute: date
    type: date_range
    alias: created_at | emission_date
    multivalue: false
  - attribute: receipt_volume
    type: equals
    multivalue: false
  - attribute: receipt_number
    type: equals
    multivalue: false
  - attribute: section
    type: equals
    multivalue: false
  - attribute: receipt_type
    type: equals
    multivalue: false
  - attribute: status
    type: equals
    alias: draft | confirmed | queued | failed
    multivalue: true
  - attribute: entity_name
    type: equals
    multivalue: true
  - attribute: entity_id
    type: equals
    multivalue: true
---

#### Entry Points
```
companies/{company_id}/quotations/{quotation_id}
```

**Logica StoreEditar esta sección**

Cuando se guardar un borrador de store:

- Se debe tener en cuenta que en details solo va qty y product_id, porque los calculos de net_unit_price y final_unit_price se hacen al momento de crear el borrador
- Se debe tener en cuenta que al momento de confirmar un detalle se calcula tambien el calculated_inventory_cost que es con la suma o resta del inventario, el cual se hace al momento de confirmar.
- El neto de detalle viaja por un tema de la libreria del api frotend pero backend no lo debe tener en cuenta.
