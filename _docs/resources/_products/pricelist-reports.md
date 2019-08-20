---
resource: pricelist_reports
singular: pricelist_report
permalink: /docs/resources/pricelist_reports/
section: Products
partOf: company
attributes:
  - name: name
    crud: read
    valuetype: string
    observation: required
  - name: pdf_url
    crud: read
    valuetype: string
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
