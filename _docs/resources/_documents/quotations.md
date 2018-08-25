---
resource: quotations
permalink: /docs/resources/quotations/
section: Documents
partOf: company
attributes:
  - name: section
    crud: 'create,read'
    valuetype: sales | purchases
  - name: receipt_type
    crud: 'create, read'
    valuetype: quotation
  - name: receipt_volume
    crud: 'create, read'
  - name: receipt_number
    crud: 'create, read'
  - name: net
  - name: total_commission
  - name: total
  - name: cae
  - name: discount_percent
  - name: discount_amount
  - name: cae_expiration_date
  - name: draft
  - name: fiscal_observation
  - name: canceled
  - name: status
    valuetype: draft | confirmed
  - name: show_amounts
    valuetype: true/false
  - name: observation
  - name: pdf_url
    crud: read
  - name: emission_date
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

#### Special entry points

`GET`{: .get} [...]/v1/companies/{company_id}/quotations/{quotation_id}/pdf
