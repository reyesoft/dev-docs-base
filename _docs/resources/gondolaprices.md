---
resource: gondolaprices
permalink: /docs/resources/gondolaprices/
partOf: company
attributes:
  - name: price
  - name: date
    crud: read
    valuetype: date
  - name: only_modified
    crud: 'create, read'
    valuetype: boolean
  - name: url_pdf
    crud: read
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
  - resource: pricelist
    hasMany: false
  - resource: categories
    hasMany: true
  - resource: entities
    hasMany: true
filters: null
entry_points: 
  methods:
    put: false
---
