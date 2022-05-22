# Estrategia de despliegue

## Acerca de la tarea 
### Tipo 
Decisión técnica

### Roles encargados
+ Encargado de diseño
+ Encargado de despliegue

### Descripción
Patrones de despliegue identificados en la literatura, los patrones fueron 
obtenidos de [^1].

> Para tener mayor información acerca de los detalles de su implementación se 
> recomienda consultar las fuentes citadas.


## Multiple service instances per host

### Características

-   Enfoque tradicional para el despliegue de aplicaciones

-   En este enfoque se pueden hosts físicos o virtuales

-   Multiples servicios son ejecutados en solo host

-   La instancia de un servicio puede ser ejecutada en un proceso o en
    grupo de procesos

-   Es posible ejecutar múltiples instancias en el mismo proceso o
    grupos de procesos

### Ventajas

-   El uso de recursos es relativamente eficiente

-   El despliegue de la instancia de un servicio es relativamente rápido

-   Debido a la falta de gastos generales, el inicio de un servicio
    suele ser muy rápido.

### Desventajas

-   Hay poco o ningún aislamiento de las instancias de los servicios, a
    menos que estén en procesos separados

-   Riesgo de requisitos de recursos contradictorios

-   Riesgo de versiones de dependencia en conflicto

-   Dificultad al limitar los recursos consumidos por una instancia de
    servicio

-   Dificultad monitorear el consumo de recursos de cada instancia de
    servicio si se implementan servicios en el mismo proceso.

-   El equipo de operaciones debe conocer los destalles específicos de
    como implementar el despliegue.

## Single service instance per host

### Características

-   Cada instancia de servicio es ejecutada en aislamiento en su propio
    host

-   Existen dos especializaciones para esta estrategia: Instancias por
    Máquina Virtual o por Contenedor.

### Ventajas

-   Las instancias de los servicios están asiladas unas de otras

-   No hay posibilidad de conflictos en los requisitos o versiones de
    las dependencias

-   Una instancia de servicio solo puede consumir como máximo los
    recursos de un solo host

-   Es sencillo monitorear, administrar y volver a implementar cada
    instancia de servicio

### Desventajas

-   Menor eficiencia en la utilización de recursos

## Service instance per VM
### Características

-   Empaquetas cada servicio como una máquina virtual

-   Cada servicio es una máquina virtual

-   Netflix despliega sus servicios de streaming de video de esta forma

### Tecnologías

-   Animator

-   Parcker.io

-   Boxfuse

### Ventajas

-   Cada servicio corre en completo aislamiento

-   Puedes aprovechar la infraestructura de la nube

-   Abstracción de las tecnologías de implementación del servicio. Los
    servicios son comenzados y detenidos de la misma manera.

-   El escalado de los servicios aumentando el número de servicios

-   Soluciones de IaaS proporcionan funciones para administrar máquinas
    virtuales.

### Desventajas

-   Menor eficiencia en la utilización de recursos

-   El despliegue de una nueva versión de un servicio es usualmente
    lento

-   Por lo general alguien en la organización es responsable de una gran
    cantidad de trabajo pesado

## Service instance per container

### Características

-   Cada servicio se ejecuta en su propio contenedor

-   Es posible limitar la memoria y los recursos de CPU de cada
    contenedor

-   Tu servicio es empaquetado como una imagen

-   Se pueden ejecutar múltiples contenedores en cada host fisicos o
    virtuales

### Tecnologías

-   Docker

-   Solaris Zones

-   Kubernetes

-   Marathon

### Ventajas

-   Aíslan cada instancia de servicio una de otra

-   Puedes monitorear con facilidad los recursos consumidos por cada por
    cada contenedor.

-   Abstraen la tecnología usada en la implementación de tus servicios

-   Cuentan con API que permite administrar tus servicios

-   A diferencia de las máquinas virtuales, los contenedores son una
    tecnología ligera

-   Las imágenes de contenedores son regularmente muy rápidas de
    construir

-   Los contenedores son extremadamente rápidos de construir y comenzar

### Desventajas

-   La infraestructura para implementar contenedores no es tan rica como
    la infraestructura para implementar máquinas virtuales

-   Cuando se trata de performance los contenedores no son tan buenos
    como las máquinas virtuales [@PerformanceConteinerVM]

## Serverless deployment

### Características

-   Empaquetado y cargado como un archivo ZIP en un provedor de la nube

-   Se factura por cada solicitud en función del tiempo usado y la
    memoria consumida

-   Una función lambada es una función sin estado

### Tecnologías

-   AWS Lambda

-   Google Cloud Functions

-   Azure Functions

### Ventajas

-   Elimina la necesidad de dedicar tiempo al trabajo pesado
    indiferenciado de administrar la infraestructura de bajo nivel. En
    su lugar, puede concentrarse en su código

-   La infraestructura de implementación sin servidor es extremadamente
    elástica. Escala automáticamente sus servicios para manejar la carga

-   Paga por cada solicitud en lugar de aprovisionar lo que podrían ser
    máquinas virtuales o contenedores infrautilizados.

### Desventajas

-   Limitaciones y restricciones significativas: un entorno de
    implementación sin servidor generalmente tiene muchas más
    restricciones que una infraestructura basada en máquinas virtuales o
    en contenedores.

-   Fuentes de entrada limitadas: las lambdas solo pueden responder a
    solicitudes de un conjunto limitado de fuentes de entrada

-   El inicio es mucha más lento

-   Riesgo de latencia alta: el tiempo que tarda la infraestructura en
    aprovisionar una instancia de su función y la función en
    inicializarse puede resultar en una latencia significativa.

### Recomendaciones

-   La selección del patrón de despliegue debe de ser elegida teniendo
    en cuenta los recursos económicos, técnicos y humanos de la
    organización.

-   Se ha identificado en la literatura que el patrón **Service instance
    per container** junto con un framework de orquestación como
    Kubernetes son la mejor opción para conseguir los beneficios que una
    arquitectura de microservicios ofrece (insertar cita a nuestro
    articulo)

## Recursos

- [Sam Newman: "Deploying And Testing Microservices"](https://www.youtube.com/watch?v=FotoHYyY8Bo)



[^1]: Chris Richardson. Microservices patterns: with examples in Java. Simon and 
Schuster, 2018.
