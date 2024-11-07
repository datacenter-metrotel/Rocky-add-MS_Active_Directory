#!/bin/bash

# Solicitar el nombre de usuario del administrador de dominio
read -p "Por favor, ingresa el nombre de usuario con privilegios de administrador del dominio: " username

# Solicitar la contraseña de forma oculta
read -s -p "Por favor, ingresa la contraseña: " password
echo # Añadir una línea en blanco para la estética

# Instalar los paquetes requeridos
sudo dnf install -y realmd sssd oddjob oddjob-mkhomedir adcli samba-common samba-common-tools krb5-workstation openldap-clients

# Descubrir el dominio
sudo realm discover metrotel.local

# Unirse al dominio usando el nombre de usuario y contraseña ingresados
echo "$password" | sudo realm join -v -U "$username" metrotel.local --stdin

# Permitir a los usuarios del dominio acceder
sudo realm permit "$username@metrotel.local"
