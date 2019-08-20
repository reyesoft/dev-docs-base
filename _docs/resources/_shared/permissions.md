---
resource: permissions
singular: permission
permalink: /docs/resources/permissions/
section: Shared
attributes:
  - name: name
    crud: read
    valuetype: string
relationships:
  - resource: permission_groups
    alias: permission_group
filters: null
entry_points:
  methods:
    delete: false
    patch: false
    post: false
---

#### Special entry points
`GET`{: .get} companies/{company_id}/company_users/me/permissions
