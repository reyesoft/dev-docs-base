---
resource: invoices
permalink: /docs/resources/invoices/
attributes:
  - name: section
    crud: 'create,read'
    valuetype: sales | purchases
  - name: letter
    valuetype: A | B | C | E | X
  - name: receipt_type
    crud: 'create,read'
    valuetype: invoice | debit | credit
  - name: receipt_volume
  - name: receipt_number
  - name: net
    crud: read
  - name: total
    crud: read
  - name: draft
  - name: status
    valuetype: draft | queued | falied | confirmed
  - name: show_amounts
    valuetype: true/false
  - name: cae READ
    crud: read
  - name: cae_expiration_date
    crud: read
  - name: observation
    crud: read
  - name: pdf_url
    crud: read
  - name: 'canceled [true/false] READ'
    crud: read
  - name: fiscal_blocked
  - name: fiscal_observation
  - name: generate_order WRITE
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
  - resource: details
    hasMany: true
  - resource: orders
    hasMany: true
  - resource: fiscalpos
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
  - attribute: letter
    type: equals
    alias: A | B | C
    multivalue: false
entry_points:
  methods:
    delete: false
---

**Para impresora fiscal/factura electrónica**  
En caso de fallar la impresión, setear

- fiscal_blocked = 1
- fiscal_observation = (razón del bloqueo)

**El daemon obtiene los documentos que:**

- draft=0
- fiscal_blocked=0
- fiscalpos=(número del fiscalpos en el daemon)

**Al momento de confirmar invoice**

- Crear remito si es necesario
- blocked=0

**Véase también**<br>
<https://docs.google.com/spreadsheets/d/1Cpzh107Nug9zn-CT1ShXWdyt6VnZ9Cw1JJkZ_J8b7pY/edit>
