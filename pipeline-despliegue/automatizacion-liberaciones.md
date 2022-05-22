# Automatización de liberaciones

## Acerca de la tarea

### Tipo:
Práctica DevOps

### Propósito 
La automatización de implementaciones es lo que te permite implementar
el software en entornos de prueba y producción con solo presionar un
botón. La automatización es esencial para reducir el riesgo de
implementaciones de producción. También es esencial para proporcionar
comentarios rápidos sobre la calidad del software, ya que permite que
los equipos realicen pruebas integrales lo antes posible después de los
cambios.

## Entradas
- Paquetes creados mediante el proceso de integración continua (CI). Estos paquetes deben poder implementarse en cualquier entorno, 
incluido el de producción.
- Secuencias de comandos para configurar el entorno, implementar los paquetes y realizar una prueba de implementación (también conocida
como prueba de humo).
- Información de configuración específica del entorno.

## Tareas

1. Se prepara el entorno de destino, tal vez mediante la instalación y configuración de cualquier software necesario, o mediante el inicio 
de un host virtual desde una imagen ya preparada en un proveedor de servicios en la nube.
2. Se implementan los paquetes.
3. Se realiza cualquier tarea relacionada con la implementación, como la ejecución de secuencias de comandos de migración de bases de datos.
4. Se realiza cualquier configuración necesaria.
5. Se realiza una prueba de implementación para asegurarse de que todos los servicios externos necesarios sean accesibles y que el sistema funcione.

## Prácticas
- Usa el mismo proceso de implementación para todos los entornos, incluido el de producción.
- Permite que cualquier persona con las credenciales necesarias implemente cualquier versión del artefacto en cualquier entorno a pedido de forma completamente automatizada.
- Usa los mismos paquetes para cada entorno.
- Permite recrear el estado de cualquier entorno a partir de la información almacenada en el control de versión.

## Recomendaciones
Documentar el proceso de implementación existente en una herramienta común a la que tengan acceso los desarrolladores y equipos de operaciones.
Trabaja para simplificar y automatizar el proceso de implementación de forma incremental.

- Empaquetado del código de manera adecuada para la implementación.
- Creación de contenedores o imágenes de máquinas virtuales preconfiguradas
- Automatización de la implementación y la configuración de middleware
- Copia de paquetes o archivos en el entorno de producción
- Reinicio de servidores, aplicaciones o servicios
- Generación de archivos de configuración a partir de plantillas
- Ejecución de pruebas de implementación automatizadas para garantizar que el sistema funcione y esté configurado de forma correcta
- Ejecución de procedimientos de prueba
- Secuencia de comandos y automatización de las migraciones de bases de datos

