---
resource: orders
permalink: /docs/resources/orders/
partOf: company
attributes:
  - name: author_id
  - name: section
    crud: 'create, read'
    valuetype: sales | purchases
  - name: letter
    valuetype: X
  - name: receipt_type
    crud: 'create, read'
    valuetype: order_sell | order_buy
  - name: receipt_volume
    crud: 'create, read'
  - name: receipt_number
    crud: 'create, read'
  - name: total_commission
  - name: net
  - name: total
  - name: draft
  - name: status
    valuetype: draft | confirmed
  - name: show_amounts
    valuetype: true/false
  - name: canceled
  - name: cae
  - name: cae_expiration_date
  - name: fiscal_observation
  - name: observation
  - name: pdf_url
    crud: read
  - name: emission_date
    crud: 'create, read'
    valuetype: datetimew3c
relationships:
  - resource: entities
    hasMany: false
  - resource: currencies
    hasMany: false
  - resource: details
    hasMany: true
  - resource: quotations
    hasMany: true
  - resource: Invoices
    hasMany: true
  - resource: receipts
    hasMany: false
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
