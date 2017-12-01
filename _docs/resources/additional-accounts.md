---
resource: additional_accounts
permalink: /docs/resources/additional-accounts/
partOf: user
attributes:
  - name: email
  - name: activated
    crud: read
  - name: activated_at
    valuetype: datetimew3c
  - name: last_login
    crud: read
    valuetype: datetimew3c
  - name: activation_code
    crud: read
  - name: user_id
    crud: read
relationships:
  - resource: users
    hasMany: false
filters: null
entry_points:
  methods:
    put: false
---
