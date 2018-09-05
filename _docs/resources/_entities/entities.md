---
resource: entities
permalink: /docs/resources/entities/
section: Entities
partOf: company
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
    valuetype: client | supplier | employee | creditor | subdist | prevent
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
  - name: abc_class
    valuetype: A | B | C | ''
    crud: read
  - name: updated_at
    crud: read
    valuetype: datetimew3c
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: transactions
    hasMany: true
  - resource: user
    hasMany: false
  - resource: author
    hasMany: false
  - resource: seller
    hasMany: false
  - resource: responsibilities
    alias: responsibility
    hasMany: false
  - resource: pricelist
    hasMany: false
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
    values: null | onlyTrashed | withTrashed
  - attribute: abc_class
    type: equals
    multivalue: true
---
