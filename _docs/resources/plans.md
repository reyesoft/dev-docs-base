---
resource: plans
permalink: /docs/resources/plans/
section: Recursos
attributes:
  - name: name
    crud: read
  - name: key
    crud: read
  - name: amount
    crud: read
  - name: limit
    crud: read
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
  - resource: companyPayment
    hasMany: true
  - resource: companies
    hasMany: true
filters: null
---

**Point of access**<br>
index: [...]/v1/plans<br>
show: [...]/v1/plans/1

**Observations**<br>
Si bien no se puede modificar mediante la API, se define en algunos casos 'required' haciendo referencia al ABM del Saiyajin.
