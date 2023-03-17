![script](https://user-images.githubusercontent.com/126183973/225883982-18978cde-07ae-4c8f-b980-fe1e08cc1256.png)

## **Instrucciones**
1. Descargar el script y guardarlo en una carpeta de tu instancia de Amazon EC2.
2. Abrir una terminal y navegar hasta la carpeta donde guardaste el script.
3. Ejecutar el script y especificar el tamaño deseado del volumen como argumento. 
_Por ejemplo, si quieres un volumen de 50 GB, escribe lo siguiente en la terminal y presiona Enter:_
![script3](https://user-images.githubusercontent.com/126183973/225883892-4e2c5226-4e06-44c1-8c5c-a492698408db.png)

4. Si no se especifica ningún tamaño, el script utilizará el tamaño predeterminado de 20 GB.
5. El script redimensionará el volumen de EBS especificado y ajustará el sistema de archivos para aprovechar el espacio adicional. Esto puede tardar unos minutos.
6. Una vez que el proceso haya terminado, puedes verificar el tamaño del volumen utilizando el siguiente comando en la terminal:
![scrip2](https://user-images.githubusercontent.com/126183973/225884204-5dff6288-f5c8-4fe4-9627-516f94cd7fd7.png)

Verás la ID del volumen y su tamaño actualizado en la tabla de salida. ¡Listo!
