---
resource: pricelistsreport
permalink: /docs/resources/pricelistsreport/
section: Recursos
partOf: company
attributes:
  - name: name
    crud: read
  - name: pdf_url
    crud: read
relationships:
  - resource: entities
    hasMany: true
  - resource: pricelist
    hasMany: true
filters: null
entry_points:
  methods:
    patch: false
---
