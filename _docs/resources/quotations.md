---
resource: quotations
permalink: /docs/resources/quotations/
attributes:
  - name: section
    crud: 'create,read'
    valuetype: sales|purchases
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
