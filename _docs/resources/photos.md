---
resource: photos
permalink: /docs/resources/photos/
section: Recursos
partOf: company
attributes:
  - name: extension
  - name: url
  - name: created_at
    crud: read
    valuetype: datetimew3c
  - name: updated_at
    crud: read
    valuetype: datetimew3c
relationships: null
filters: null
---

# Special entry points:

`post`  http://api.multinexo.com/v1/companies/{company_id}/products/{product_id}
