---
resource: gondolaprices
singular: gondolaprice
permalink: /docs/resources/gondolaprices/
section: Products
partOf: company
attributes:
  - name: only_modified
    crud: create, read
    valuetype: bool
  - name: date
    crud: read
    valuetype: date
  - name: pdf_url
    crud: read
relationships:
  - resource: pricelists
    alias: pricelist
  - resource: categories
    alias: category
  - resource: entities
    alias: supplier
filters: null
entry_points:
  methods:
    patch: false
---
