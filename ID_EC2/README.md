Instrucciones
script sh que obtiene la ID de la instancia actual en la que se está ejecutando y la almacena en una variable

Puedes guardar este código en un archivo con extensión .sh, por ejemplo "get_instance_id.sh", y ejecutarlo en cualquier máquina que tenga acceso a la instancia EC2 mediante el siguiente comando en la terminal:

bash get_instance_id.sh

Este script utiliza el servicio "Instance Metadata" de AWS para obtener la ID de la instancia actual sin necesidad de autenticación.
