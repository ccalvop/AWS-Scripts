Instrucciones nueva IP para instancia EC2

Este script verificará que se haya especificado una dirección IP como argumento, asignará la dirección IP especificada a la variable IP_ADDRESS y modificará la dirección IP de la instancia EC2 utilizando la dirección IP especificada como argumento.

Para ejecutar el script, simplemente abre una terminal y navega hasta el directorio donde se encuentra el script. Luego, ejecuta el siguiente comando, reemplazando xx.xx.xx.xx con la dirección IP que deseas asignar:

./script.sh xx.xx.xx.xx

instrucciones para ejecutar el script:

1. Accede a la instancia de EC2 desde la cual quieres modificar la dirección IP.
2. Descarga el script y guárdalo en un directorio de tu elección en la instancia.
3. Abre una terminal y navega hasta el directorio donde se encuentra el script.
4. Ejecuta el comando chmod +x change-ip.sh para asegurarte de que el script tenga permisos de ejecución.
5. Para modificar la dirección IP de la instancia, ejecuta el comando ./change-ip.sh [nueva dirección IP] y reemplaza [nueva dirección IP] por la dirección IP que deseas asignar a la instancia.
6. Espera a que el script termine de ejecutarse. Si todo sale bien, deberías ver un mensaje de éxito en la terminal.
7. Verifica que la dirección IP se haya actualizado correctamente ejecutando el comando ifconfig.

Debes tener los permisos necesarios para modificar la dirección IP de la instancia. También de haber ingresado correctamente la nueva dirección IP al ejecutar el script.

El script modifica la dirección IP privada de la instancia EC2, no la dirección IP pública. Si necesitas modificar la dirección IP pública, tendrás que hacerlo desde la consola de AWS o mediante la API de AWS.

> otro script interesante: AWS CLI para verificar qué recursos de AWS están asociados con una instancia EC2 determinada
