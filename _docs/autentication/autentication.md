---
title: Autenticación
permalink: /docs/autentication/
---
Multinexo utiliza JWT (Javascript Web Token) para identificar y autorizar a los usuarios cuando utilizan los servicios ofrecidos por la
API. Cada vez que tu aplicación haga una petición a una ruta o servicio deberá presentarse con un Token.

Con este token podrás comunicarte todas la veces que sea necesario mientras la sesión se mantenga abierta. Al cerrar sesión, quedará
obsoleto y deberás iniciar nuevamente para recibir uno nuevo.

# Cómo generar el token

Cuando inicias sesión en Multinexo, tus datos privados (nombre de usuario y contraseña) son enviados a la API por única vez. Una vez
verificados, el servidor responde con un JWT que podrás utilizar para hacer las peticiones a la API hasta el cierre de la sesión.

![JWT]({{ '/img/autentication/Diagrama-JWT-Multinexo.png' | prepend: site.baseurl }}){: .width-100}

## Punto de entrada para la generación del token

Para solicitar un token de acceso debes hacer una petición POST al punto de entrada que se indica a continuación con el nombre de usuario
y la contraseña:

- Punto de entrada: `https://api.multinexo.com/v1/authenticate`

- Datos:

  `email: correo electrónico del usuario`

  `password: contraseña`

- Headers: `'Content-Type': 'application/x-www-form-urlencoded'`

# Cómo utilizar el token

Después de recibir el token, debes guardarlo e incluirlo en el encabezado de cada petición a la API con el siguiente formato:

  `Authorization: Bearer { user_token }`

El servidor verificará la validez del mismo y, en caso de ser correcto, responderá acorde a la solicitud. Si el token enviado ha quedado
obsoleto o es incorrecto, se cerrará la sesión y se solicitarán nuevamente los datos de inicio.
