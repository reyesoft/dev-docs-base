---
resource: preferences
singular: preference
permalink: /docs/resources/preferences/
section: Users
partOf: user
attributes:
  - name: key
    crud: read
    valuetype: int
  - name: value
    valuetype: string
relationships: null
filters: null
entry_points:
  name: me
  methods:
    delete: false
    post: false
    put: false
    get: false
---

#### Special entry points

`GET`{: .get} [...]v1/users/me/preferences

`GET`{: .get} [...]v1/users/me/preferences/{key}

`PATCH`{: .patch} [...]v1/users/me/preferences/{key}

--------------------------------------------------------------------------------
