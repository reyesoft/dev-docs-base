---
resource: gondolaprices
permalink: /docs/resources/gondolaprices/
section: Products
partOf: company
attributes:
  - name: entity_id
    crud: create
  - name: only_modified
    crud: 'create, read'
    valuetype: boolean
  - name: date
    crud: read
    valuetype: date
  - name: pdf_url
    crud: read
relationships:
  - resource: pricelists
    alias: pricelist
  - resource: categories
    hasMany: true
  - resource: entities
    hasMany: true
filters: null
entry_points:
  methods:
    patch: false
---
