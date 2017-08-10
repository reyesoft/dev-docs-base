---
title: Mercado Pago
permalink: /docs/otros-recursos/mercadopago/
---

- Logueado con una cuenta en Mercado Pago ir a <https://www.mercadopago.com/mla/herramientas/aplicaciones>.
- Pegar el siguiente codigo en una consola y reemplazar por las credenciales obtenidas anteriormentermente. Y obtendrás tu_acces_token

  ```javascript
  curl -s -X POST -H 'content-type: application/x-www-form-urlencoded' 'https://api.mercadopago.com/oauth/token' -d 'grant_type=client_credentials' -d 'client_id=CLIENT_ID' -d 'client_secret=CLIENT_SECRET' | grep -o '"access_token":"[^"]*"' | sed -n 's/.*"access_token":"\(.*\)"/\1/p'
  ```

Luego en la misma consola pegar el siguiente curl y reemplazar "tu_access_token" por el token obtenido anteriormente.

```javascript
curl -X POST -H "Content-Type: application/json" -d '{"site_id":"MLA"}'

https://api.mercadolibre.com/users/test_user?access_token=tu_access_token
```

Obtendrás un JSON con varios datos, entre estos encontrarás: email y password de tu usuario de prueba.
