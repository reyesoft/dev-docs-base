---
resource: users
permalink: /docs/resources/users/
partOf: company
attributes:
  - name: email
  - name: first_name
  - name: last_name
  - name: avatar_url
  - name: actual_status 'only get'
    valuetype: invited | accepted | rejected
  - name: send_invitation 'only update'
    valuetype: true | false
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
entry_points:
  methods:
    delete: false
---

#### Special JSON-API entry points
`mailAssignSave`{: .code} `POST`{: .post} [...]/v1/users/invitation_request

Para enviar un email de invitacion a un nuevo usuario.  
`mailAssign`{: .code} `POST`{: .post} [...]/v1/companies/{company_id}/invitations

Comprueba el hash enviado al mail este correcto y lo redirecciona a un apartado de frontend  
`mailAssignRedirect`{: .code} `GET`{: .get} [...]/v1/users/invitations/{code}
