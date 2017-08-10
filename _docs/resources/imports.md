---
resource: imports
permalink: /docs/resources/imports/
attributes:
  - name: resource
    valuetype: string
  - name: has_header
    valuetype: boolean
  - name: headers
    valuetype: string
  - name: records
    valuetype: json
  - name: status
    valuetype: queued|ok|error
  - name: observation
    crud: read
relationships: null
filters: null
---

**Point of access**<br>
index: GET [...]/v1/imports<br>
show: GET [...]/v1/imports/1<br>
store: POST [...]/v1/imports<br>
update: PUT/PATCH [...]/v1/imports/1

**A tener en cuenta**<br>
POR [POST] solo se guarda:<br>
(string)resource: example (products, entities)<br>
(binario)file: example (#~½###@#~~½½~##@@) signos raros¿? ja

POR [PUT/PATCH] (string) headers: example (name,description,,,,replacemente_cost,etc)<br>
(string) has_header: example (1/0) (si el excel o csv tiene encabezado)

**Observation**<br>
Por saiyajin se puede hacer un test completo de la funcionalidad, recordar de activar el worker
