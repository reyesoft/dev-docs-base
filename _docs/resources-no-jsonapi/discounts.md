---
resource: discounts
permalink: /docs/resources-no-jsonapi/discounts/
section: Recursos-no-jsonapi
attributes:
  - name: months
    crud: read
  - name: percent
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
relationships: null
filters: null
---

**Point of access**<br>
index: [...]/v1/discounts<br>
show: [...]/v1/discounts/1

**Observations**<br>
Si bien no se puede modificar mediante la API, se define en algunos casos 'required' haciendo referencia al ABM del Saiyajin.
