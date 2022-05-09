# Servicios configurables

## Acerca de la tarea
### Nombre
Servicios configurables

### Tipo
Decisión técnica

### Roles encargados

-   Encargado de diseño

-   Encargado de despliegue

### Descripción

Un aspecto importante en el desarrollo de microservicios es la
configuración de los mismos, cada servicio puede utilizar distintos
recursos de base de datos, frameworks para el manejo de mensajes o
eventos. Estas configuraciones pueden cambiar dependiendo del ambiente
en el que se esté ejecutando el servicio. Como veremos más adelante,
como buena práctica se debe contar con al menos dos ambientes el de
pruebas y el de producción. Para lograr que los servicios se pueden
ejecutar en estos ambientes es necesario externalizar su configuración.
Existen enfoques identificados por [@richardson2018microservices] para
el manejo de la configuración, estos se describen a continuación.

## Push model

### Características

-   La infraestructura de despliegue pasa las configuraciones al
    servicio usando variables de entorno del sistema operativo o un
    archivo de configuraciones.

-   Con este enfoque la infraestructura de despliegue no te permite
    cambiar la configuración de un servicio en ejecución sin
    reiniciarlo.

-   Existe un riesgo de que los valores de configuración comiencen a
    dispersarse a través de la elaboración de numerosos servicios

## Pull model

### Características

-   La instancia del servicio lee las propiedades de configuración de un
    servidor de configuración

-   Al inicio, la instancia de un servicio busca el servicio de
    configuración por su configuración.

-   La configuración para acceder al servicio de configuración es
    inyectada mediante el mecanismo de push model

### Beneficios

-   Configuración centralizada

-   Descifrado transparente de información sensible

-   Reconfiguración dinámica

### Desventajas

-   Es otra pieza de infraestructura que necesita ser configurada y
    mantenida

### Recomendaciones

-   En el control de versiones, junto al servicio almacenar las
    configuraciones [@bruce2018microservices]

-   Siempre que sea posible, almacene los secretos en un sistema de
    gestión de secretos adecuado, o cifre los secretos con un sistema de
    gestión de claves [@bruce2018microservices] [@adkins2020building]

-   Nunca registres los secretos en el control de versiones ni incrustes
    los secretos en el código fuente.[@adkins2020building]

-   Nunca registre los secretos en el control de versiones ni incruste
    los secretos en el código fuente. [@adkins2020building]

-   Cuando este sea un uso válido uso, crea credenciales separadas para
    humanos y servicios. [@adkins2020building]

### Tecnologías

-   Hashicorp Vault

-   AWS Parameter Store

-   Cloud KMS

-   SQL and NoSQL databases

