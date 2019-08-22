---
resource: company_external_apps
singular: company_external_app
permalink: /docs/resources/company_external_apps/
section: Companies
partOf: company
attributes:
  - name: url
    crud: read
  - name: status
  - name: observation
    crud: read
  - name: updated_at
    crud: read
relationships:
  - resource: external_apps
    alias: external_app
filters:
  - attribute: status
    multivalue: true
    type: enum
entry_points:
  methods:
    post: false
    delete: false
---