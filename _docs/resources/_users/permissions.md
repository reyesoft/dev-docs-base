---
resource: permissions
permalink: /docs/resources/permissions/
section: Users
partOf: company
attributes:
  - name: name
    crud: read
  - name: description
    crud: read
  - name: slug
    crud: read
relationships:
  - resource: roles
    hasMany: true
filters: null
entry_points:
  methods:
    delete: false
    patch: false
    post: false
---

#### Special entry points
`GET`{: .get} companies/{company_id}/users/me/permissions
