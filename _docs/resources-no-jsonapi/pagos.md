---
title: Pagos
permalink: /docs/resources-no-jsonapi/pagos/
---

**Proceso**<br>
Colmena pide al BE el `pref_id` de MercadoPago para crear el botón del plan+compañía.<br>
El backend solicita a MercadoPago un `pref_id` para el botón.<br>
Colmena crea el botón.<br>
El usuario paga<br>
MercadoPago hace un IPN a Apicultor<br>
Editar esta sección<br>
Colmena a Apicultor<br>
Si no se setea el mes, por defecto es 1

```
/mercadopago/gettoken?company_id={company_id}&plan={plan_id}&months={months_id}
```

or

```
/mercadopago/gettoken?company_payment_id={company_payment_id}&company_id={company_id}&months={months_id}
```

Luego de validar que es un usuario logueado, retorna

**response:**

```javascript
{    
prefid: value
}
```

Apicultor solicitará el pref_id según <https://reyesoft.atlassian.net/browse/API-391><br>
Colmena creará un botón según <https://reyesoft.atlassian.net/browse/COL-370><br>
Editar esta sección<br>
Al pagar, IPN de MercadoPago a Apicultor<br>
Ver <https://reyesoft.atlassian.net/browse/API-407>

**IPN**

```
/mercadopago/ipn/<br>
```

Configurado en notification_url de pref_id
