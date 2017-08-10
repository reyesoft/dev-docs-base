---
title: JSON API Error response
permalink: /docs/otros-recursos/json-api-error-response/
---

```javascript
{
    "jsonapi": { "version": "1.0" },
    "errors": [
        {
            "code":   "225",
            "source": { "attribute": "password", "pointer": "/data/attributes/password" },
            "title": "Passwords must contain a letter, number, and punctuation character.",
            "detail": "The password provided is missing a punctuation character."
        },
        {
            "code":   "123",
            "source": { "attribute": "password", "pointer": "/data/attributes/password" },
            "title":  "Value is too short",
            "detail": "First name must contain at least three characters."
        },
        {
            "code":   "123",
            "source": { "attribute": "first-name", "pointer": "/data/attributes/first-name" },
            "title":  "Value is too short",
            "detail": "First name must contain at least three characters."
        }
    ]
}
```

- title y code deberían ser los mismos para el mismo error que ocurre siempre, mientras que detail es una explicación del error en particular para el atributo o caso que se está tratando.
- attributes no es del estándar, pero agilizará el proceso en el front-end por ahora.
- ¿Más información del estándar? <http://jsonapi.org/format/#errors>

**Typescript Interface**

```javascript
interface IJsonapiError {
    jsonapi?: string;
    errors: [
        {
            code?: string,
            source?: {
                attributes?: string,
                pointer: string
            },
            title?: string,
            detail?: string
        }
    ];
}
```
