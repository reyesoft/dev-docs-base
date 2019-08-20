---
resource: quotations
singular: quotation
permalink: /docs/resources/quotations/
section: Documents
partOf: company
attributes:
  - name: section
    crud: create,read
    valuetype: sales | purchases
  - name: receipt_type
    crud: create, read
    valuetype: quotation
  - name: receipt_volume
    crud: create, read
  - name: receipt_number
    crud: create, read
  - name: net
  - name: total
  - name: discount_percent
  - name: discount_amount
    crud: read
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
    alias: entity
  - resource: currencies
    hasMany: false
    alias: currency
  - resource: details
    hasMany: true
  - resource: orders
    hasMany: true
filters:
  - attribute: emission_date
    type: date_range
    multivalue: false
  - attribute: receipt_volume
    type: equals
    multivalue: false
  - attribute: receipt_number
    type: equals
    multivalue: false
  - attribute: section
    type: equals
    multivalue: true
  - attribute: status
    type: equals
    alias: draft | confirmed | queued | failed
    multivalue: true
  - attribute: entity.name
    type: like
    multivalue: false
---

#### Special entry points

`GET`{: .get} [...]/v1/companies/{company_id}/quotations/{quotation_id}/pdf
