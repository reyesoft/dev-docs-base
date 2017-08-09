---
resource: users
permalink: /docs/resources/users/
attributes:
  - name: email
  - name: first_name
  - name: last_name
  - name: avatar_url
  - name: actual_status 'only get'
    valuetype: invited|accepted|rejected
  - name: send_invitation 'only update'
    valuetype: true|false
  - name: updated_at
    crud: read
    valuetype: datetimew3c
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: additional_accounts
    hasMany: true
  - resource: roles
    hasMany: true
  - resource: entities
    hasMany: false
filters:
  - attribute: first_name
    type: like
    multivalue: false
  - attribute: trashed
    multivalue: false
    values: null|onlyTrashed|withTrashed
---
