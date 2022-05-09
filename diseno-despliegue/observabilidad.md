# Servicios observables

## Acerca de la tarea
### Nombre:
Servicios configurables

### Tipo:

Decisión técnica

### Roles encargados:

-   Encargado de diseño

-   Encargado de despliegue

-   Desarrollador

### Descripción

La observabilidad de los microservicios debe de ser implementado en
varias capas de la arquitectura, es necesario tener saber que esta
sucediendo en la infraestructura y en los servicios. El equipo de
operaciones es responsable de la infraestructura como servidores,
bitácoras, métricas, trazabilidad de excepciones. Los desarrolladores
son responsables de que sus servicios sean observables. Para lograr esto
nivel de la capa de microservicios existen un conjunto de patrones que
nos pueden ayudar.

## Patrones de observabilidad

Solo se describen de manera general los patrones, para mayor información
acerca de ellos consultar [@richardson2018microservices]

### Health check API

Expone un endpoint que retorna el estado del servicio

### Log aggregation

Registra la actividad del servicio y los escribe en u servidor de
registros centralizado

### Distributed tracing

Asigna cada solicitud externa un identificador único, rastrea las
solicitudes y su flujo entre servicios

### Exception traking

Reporta las excepciones a un servicio de ratreo de excepciones el cual
notifica a los desarrolladores y hace el seguimiento de su estado

### Application metrics

Almacena las métricas del servicio y las expone a un servidor de
métricas externo

### Audit logging

Registra las acciones de los usuarios

## Microservice chassis

Este patrón es un marco que se encarga de manejar las preocupaciones y
patrones base mencionados anteriormente.

### Beneficios

-   Reduce la cantidad de código que debes escribir

-   Es rápido el desarrollo de un nuevo servicio

-   Te permite concentrarte en la lógica del negocio

-   Se adapata a tus requisitos

### Desventajas

-   Necesitas crear un chassis para cada lenguaje y combinación de
    plataformas que uses para desarrollar los servicios

## Service mesh

Este patrón dirige todo el tráfico de red que entra y sale de los
servicios a través de una capa de red que implementa varias
preocupaciones, incluyendo interruptores de circuito, rastreo
distribuido, descubrimiento de servicios, equilibrio de carga y
enrutamiento de tráfico basado en reglas

### Beneficios

-   Evita los problemas de implementar un chassis ya que externaliza la
    implementacion de las funcionalidades

-   Puede asegurar la comunicación entre procesos

### Tecnologías

-   Istio

-   Linkerd

-   Conduit
