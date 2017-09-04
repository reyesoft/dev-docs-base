---
title: Token
permalink: /docs/otros-recursos/token/
---

```javascript
{
  "d": {
    "uid": 1,
    "companies_admin": [
      3,
      460,
      462
    ],
    "first_name": "Muriel",
    "last_name": "Luna",
  },
  "debug": true,
  "sub": 1,
  "iss": "http://localhost/v1/authenticate",
  "iat": 1461610629,
  "exp": 1461632229,
  "nbf": 1461610629,
  "jti": "170e95a6b956736c7c2f45adb847ca93"
}
```

- d : Array con datos adicionales:
- uid : Id del usuario.
- companies_admin : Array con los id de las compañías en las que el usuario es administrador.
- first_name : Nombre del usuario logueado.
- last_name : Apellido del usuario logueado.

- debug: Se setea en true cuando se quiere que muestre los posibles errores del token.
