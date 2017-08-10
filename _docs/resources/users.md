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

**API point of access**

mailAssignSave (post): [...]/v1/users/invitation_request<br>
mailAssign (post): [...]/v1/companies/{company_id}/invitations // se envíe un mail al supuesto nuevo usuario<br>
mailAssignRedirect (get): [...]/v1/users/invitations/{code} //comprueba el hash enviado al mail este correcto y lo redirecciona a un apartado de frontend
