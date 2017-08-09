---
resource: additional_accounts
permalink: /docs/resources/additional-accounts/
attributes:
  - name: email
  - name: activated
    crud: read
  - name: activated_at
    crud: read
    valuetype: datetimew3c
  - name: last_login
    crud: read
    valuetype: datetimew3c
  - name: created_at
    crud: read
    valuetype: datetimew3c
  - name: updated_at
    crud: read
    valuetype: datetimew3c
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: users
    hasMany: false
filters: null
---
