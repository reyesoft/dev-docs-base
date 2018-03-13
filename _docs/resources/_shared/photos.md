---
resource: photos
permalink: /docs/resources/photos/
section: Shared
partOf: company
attributes:
  - name: extension
  - name: url
relationships: null
filters: null
entry_points:
  methods:
    get: false
---

# Special entry points:

`POST`{: .post} [...]v1/companies/{company_id}/products/{product_id}

`PATCH`{: .patch} [...]v1/companies/{company_id}/products/{product_id}/photos/{photo_id}

`GET`{: .get} [...]v1/products/photos/{photo_id}