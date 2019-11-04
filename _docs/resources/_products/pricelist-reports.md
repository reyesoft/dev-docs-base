---
resource: pricelist_reports
permalink: /docs/resources/pricelist_reports/
singular: resource
section: Products
partOf: company
attributes:
  -
    name: name
    crud: 'create, read, update'
    required: true
  -
    name: pdf_url
    crud: read
relationships:
  -
    resource: entities
    alias: entities
    crud: 'create, read, update'
  -
    resource: pricelists
    alias: pricelists
    crud: 'create, read, update'

---
