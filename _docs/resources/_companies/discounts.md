---
resource: discounts
singular: discount
permalink: /docs/resources/discounts/
section: Companies
attributes:
  - name: months
    crud: read
    valuetype: int
  - name: percent
    crud: read
    valuetype: float
relationships: null
filters: null
entry_points:
  methods:
    delete: false
    post: false
    patch: false
---

**Point of access**<br>
index: [...]/v1/discounts<br>
show: [...]/v1/discounts/1

**Observations**<br>
Si bien no se puede modificar mediante la API, se define en algunos casos 'required' haciendo referencia al ABM del Saiyajin.
