---
resource: pricelist_reports
permalink: /docs/resources/pricelist_reports/
section: Products
partOf: company
attributes:
  - name: name
    crud: read
  - name: pdf_url
    crud: read
relationships:
  - resource: entities
    hasMany: true
  - resource: pricelists
    hasMany: true
filters: null
entry_points:
  methods:
    patch: false
---
