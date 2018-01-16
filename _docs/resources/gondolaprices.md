---
resource: gondolaprices
permalink: /docs/resources/gondolaprices/
section: Recursos
partOf: company
attributes:
  - name: entity_id
    crud: create
  - name: date
    crud: read
    valuetype: date
  - name: only_modified
    crud: 'create, read'
    valuetype: boolean
  - name: pdf_url
    crud: read
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
