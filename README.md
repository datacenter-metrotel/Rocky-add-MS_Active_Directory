Este script en Bash automatiza el proceso de unión de un sistema Linux a un dominio de MS Active Directory usando realm. 
El script solicita de manera interactiva el nombre de usuario y la contraseña del usuario con privilegios de administrador de dominio, manteniendo la contraseña oculta para mayor seguridad.

Funcionamiento del Script

1- Instalación de paquetes requeridos: Instala las dependencias necesarias (realmd, sssd, oddjob, etc.) para habilitar la integración con Active Directory.
2- Descubrimiento del dominio: Ejecuta realm discover para verificar la disponibilidad del dominio especificado.
3- Unión al dominio: Usa el comando realm join junto con el nombre de usuario y la contraseña ingresados. La contraseña se pasa de manera segura a través de stdin para evitar que quede visible en el historial de comandos.
4- Permiso para usuarios del dominio: Configura permisos para permitir que los usuarios del dominio se autentiquen en el sistema.

Uso

Ejecuta el script y sigue las instrucciones para ingresar las credenciales. Este script está diseñado para entornos que requieren acceso autenticado de usuarios de Active Directory en sistemas Linux.
