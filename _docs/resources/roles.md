---
resource: roles
permalink: /docs/resources/roles/
attributes:
  - name: name
  - name: slug
  - name: description
  - name: company_id
relationships:
  - resource: roles
    hasMany: true
filters: null
---
