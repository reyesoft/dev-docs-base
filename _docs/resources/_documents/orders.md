---
resource: orders
singular: order
permalink: /docs/resources/orders/
section: Documents
partOf: company
attributes:
  - name: section
    crud: create, read
    valuetype: sales
  - name: letter
    valuetype: X
  - name: receipt_type
    crud: create, read
    valuetype: order_sell | order_buy
  - name: receipt_volume
    crud: create, read
  - name: receipt_number
    crud: create, read
  - name: net
    crud: read
  - name: total
    crud: read
  - name: discount_percent
  - name: discount_amount
  - name: status
    valuetype: draft | confirmed
  - name: show_amounts
    valuetype: true/false
  - name: observation
  - name: pdf_url
    crud: read
  - name: emission_date
    crud: create, read
    valuetype: datetimew3c
relationships:
  - resource: entities
    alias: entity
    hasMany: false
    alias: entity
  - resource: currencies
    hasMany: false
    alias: currency
  - resource: physicalpos
    hasMany: false
  - resource: details
    hasMany: true
  - resource: quotations
    hasMany: true
  - resource: invoices
    hasMany: true
  - resource: orders
    hasMany: true
  - resource: cashier_entries
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
    multivalue: false
  - attribute: receipt_type
    type: equals
    multivalue: true
  - attribute: status
    type: equals
    alias: draft | confirmed | queued | failed
    multivalue: true
  - attribute: entity_name
    type: like
    multivalue: false
---

#### Special entry points

`GET`{: .get} [...]/v1/companies/{company_id}/quotations/{quotation_id}/pdf
