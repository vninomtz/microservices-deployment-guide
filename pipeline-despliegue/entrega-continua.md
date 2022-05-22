# Entrega continua

## Acerca de la tarea

### Nombre:
Continuous Delivery CD

### Tipo
Práctica DevOps

### Propósito


Automatización completa del proceso de entrega La entrega debe ser tan
sencilla como seleccionar la versión de la aplicación y presionar un
botón. Regresar a una versión debe ser igual de sencillo.

El proceso para manejar tu ambiente de producción debe ser usado para
manejar los ambientes de pruebas. Todos los aspectos del ambiente deben
ser manejados de la misma manera, por ejemplo bases de datos, web
servers message brokers y servidores de aplicaciones.

Es necesario tener un un plan creado y mantenido por todos los
involucrados en la liberación del software incluyendo desarrolladores,
testers, equipo de operaciones e infraestructura. Reducir los errores
humanos automatizando tanto como sea posible, comenzando con las fases
más propensas a errores. Realiza a menudo ensayos del proceso en
ambientes parecidos a producción para tener la capacidad de volver atrás la
liberación si las cosas no van de acuerdo al plan Tener una estrategia
de migración de la configuración e información de producción como parte
del proceso de actualización y retroceso.

## Prácticas necesarias
- Automatización de pruebas
- Automatización de la implementación
- Pruebas continuas
- Integración Continua
- Administración de la configuración

## Lista verificación para saber si prácticas CD

- ¿Se encuentra nuestro software en un estado que permita la implementación durante su ciclo de vida?
- ¿Priorizamos que el software se pueda implementar por sobre trabajar en funciones nuevas?
- ¿Están los comentarios rápidos sobre la calidad y la capacidad de implementación del sistema en el que trabajamos disponibles para todos los miembros del equipo?
- Cuando recibimos comentarios que indican que el sistema no se puede implementar (por ejemplo, las compilaciones de errores o las
pruebas), ¿convertimos la corrección de estos problemas en nuestra prioridad más alta?
- ¿Podemos implementar nuestro sistema en producción o en los usuarios finales en cualquier momento a pedido?

## Lista de verificación para saber si la liberación está lista para producción

- El código se puede compilar.
- El código hace lo que nuestros desarrolladores creen que debe hacer porque ha pasado sus pruebas unitarias.
- El sistema hace lo que nuestros analistas o usuarios creen que debe hacer porque ha pasado todas las pruebas de aceptación.
- La configuración de la infraestructura y los entornos de referencia se gestiona adecuadamente, porque la aplicación se ha probado en un análogo de producción.
- El código tiene todos los componentes adecuados porque se ha podido desplegar.
- El sistema de despliegue funciona porque, como mínimo, se habrá utilizado en esta versión candidata al menos una vez en un entorno de desarrollo, una vez en la 
etapa de pruebas de aceptación y una vez en un entorno de pruebas antes de que la candidata pudiera haber sido promovida a esta etapa.
- El sistema de control de versiones tiene todo lo que necesitamos para desplegar, sin necesidad de intervención manual, porque ya hemos desplegado el sistema varias veces.
