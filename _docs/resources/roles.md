---
resource: roles
permalink: /docs/resources/roles/
section: Recursos
partOf: company
attributes:
  - name: name
  - name: slug
  - name: description
  - name: company_id
relationships:
  - resource: permissions
    hasMany: true
filters: null
---
