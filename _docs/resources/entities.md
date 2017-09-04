---
resource: entities
permalink: /docs/resources/entities/
attributes:
  - name: name
  - name: identification_number
  - name: contact_name
  - name: street_name
  - name: street_number
  - name: location
  - name: province
  - name: additional_info
  - name: email
  - name: phone
  - name: observation
  - name: has_account
  - name: entity_type
    valuetype: client|supplier|employee|creditor|subdist|seller
  - name: balance
    crud: read
  - name: pdf_url
    crud: read
  - name: pricelist_id 'only for orders-edit'
    crud: read
  - name: latitude
  - name: longitude
  - name: balance_at
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
  - resource: transactions
    hasMany: true
  - resource: sellers
    hasMany: true
  - resource: responsibilities
    hasMany: false
  - resource: pricelists
    hasMany: false
  - resource: documents
    hasMany: true
filters:
  - attribute: name
    type: like
    multivalue: false
  - attribute: identification_number
    type: like
    multivalue: false
  - attribute: entity_type
    type: equals
    multivalue: true
  - attribute: trashed
    multivalue: false
    values: null|onlyTrashed|withTrashed
---
