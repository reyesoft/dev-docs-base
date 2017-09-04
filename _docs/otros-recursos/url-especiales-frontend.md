---
title: URL especiales del frontend
permalink: /docs/otros-recursos/url-especiales-frontend/
---

**Parámetros:**

- key: a futuro se puede implementar un array de errores, para evitar la injección de mensajes arbitrarios
- message: mensaje a mostrar (a futuro se debería controlar por key)

Para mensajes

- Mensaje OK: <https://gestion.multinexo.com/#/core/message/success?key=test_ok&message=TestMessageOK>

- Mensaje ERROR:<br>
  <https://gestion.multinexo.com/#/core/message/error?key=test_error&message=TestMessageERROR>

Keys

- activation_mail_ok: ha validado exitosamente el mail.
- invitation_ok: aceptó inivitación a empresa, y ya tiene usuario. Si no tiene usuario, ir a la url<br>
  <https://gestion.multinexo.com/#/core/response/invitation?code=ActivationCode>
- check_email

Para reset password<br>
<https://gestion.multinexo.com/#/core/resetpassword?code=ActivationCode>
