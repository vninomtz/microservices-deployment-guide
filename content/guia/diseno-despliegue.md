# Diseño del despliegue

El diseño es una de las actividades más importantes en la adopción de una
arquitectura basada en microservicios, en esta arquitecta cada servicio cuenta
con su propio proceso de despliegue, cada uno de ellos puede ser desarrollado
usando distintas tecnologías que a su vez cuentan con sus propios requisitos
para ser desplegados. A su vez, se necesitan mecanismos para la comunicar los
servicios, monitorear su estado, sin mencionar los motores de bases de datos o
sistemas de cache que son usados para lidiar con altas demandas. Es por esto que
antes de comenzar a crear tus pequeños servicios que realizan una tarea bien,
debes tomar muchas decisiones técnicas y considerar algunos aspectos como:

- ¿Cómo separar tu aplicación monolítica en pequeños servicios?
- ¿Cómo manejar los datos de tu sistema?
- ¿Cómo se comunicaran tus servicios entre ellos y con los clientes?
- ¿Cómo lograr que tus servicios sean resistentes a fallas?
- ¿Cómo reutilizar servcios y agilizar la construcción de los mismos?
- ¿Cómo estandarizar el despliegue y liberar continuamente servicios listos
  para producción?

## Acerca de la sección

En esta sección nos enfocaremos solo el diseño del último punto de los mencionados
anteriormente que consiste en la _estandarización de los artefactos de despliegue_ y
_liberación continua de servicios_ listos para un ambiente de producción. Estos
son los dos objetivos principales de la sección y de la guía.

Esta sección presenta los distintos patrones que se han encontrado en la literatura
para resolver estos retos. Las subsecciones presentadas derivan de las tareas
descritas en la sección de [_Procesos_](#procesos-para-la-adopcion-de-microservicios).

## Arquitectura de un sistema de microservicos

### Arquitectura

![Capas de una arquitectura de microservicios](./guia/images/capas-msa.png)

### Ecosistema

![Entorno de producción](./guia/images/entorno-produccion-msa.png)

#### Capa 1: Hardware

- Servicios físicos en donde se ejecuraran los servicios.
- Los servidores pueden ser propiedad de la empresa o rentados a proveedores de la nube.
- La gestión de los servidores forma parte de esta capa, esto incluye la instalación
  del sistema operativo, la configuración de tecnologías que se ejecutan sobre la
  la capa de hardware para su abstracción.
- Cada host debe ser provisionado y configurado usando herramientas de administración
  de la configuración.
- Es necesario tener un monitoreo y bitácora a nivel de host, para lograr un rápido
  diagnostico, mitigación y resolución de errores.

##### Herramientas

#### Capa 2: Comunicación

- Esta capa contiene la red, DNS, RCPs, endpoints del API, service discovery,
  service registry y balancedores de carga.
- Una MSA requiere que se implementen en esta capa: service discovery, service
  registry y load balancing; con el fin de tener una efectiva y eficiente comunicación.

**Tecnologías de descrubrimiento de servicios**

- etcd
- Consult
- Hyperbahn
- ZooKeeper

**Tecnologías de balanceamiento de cargas**

- Amazon Web Services Elastic Load Balancer
- Netflix Eureka
- HAProxy
- Nginx

#### Capa 3: Plataforma de la aplicación

- Esta capa contiene todas las herramientas internas que son independientes a los
  microservicios.
- Esta capa se desarrolla de tal manera que los equipos de desarrollo de microservicios
  no tengan que diseñar, construir o mantener nada más que su propios microservicios.

Esta capa debe de contar con:

- Herramientas internas para los desarrolladores
- Un proceso de desarrollo estandarizado
- Un centralizado y automatizado sistema de construcción y entrega.
- Pruebas automatizadas
- Una solución de despliegue estandarizada y centralizada
- Un centralizado sistema de monitoreo y bitácoras a nivel de microservicios.

#### Capa 4: Microservicios

- En esta capa se encuentran los microservicios y lo correspondiente a ellos.
- Los microservicios deben estar abstraidos de las capas de infraestructura.
- Lo único que no se abstrae en esta capa son las configuraciones especificas de cada microservicio.
- Una buena práctica es centralizar las configuraciones de las aplicaciones así como la de las herramientas.

### Aspectos a considerar del despliegue

- El despliegue debe de ser aburrido
- Cuanto más rápido pueda desplegar nuevos servicios y cambios, más rápido podrá
  iterar y ofrecer valor a sus usuarios finales [@bruce2018microservices].
- El despliegue debe maximizar la seguridad: debes validar en la medida de lo posible
  que un determinado cambio no afectará negativamente a la estabilidad de un servicio [@bruce2018microservices].
- La consistencia de proceso de despliegue en diferentes servicios, independientemente
  de la pila de tecnología subyacente, ayuda a aliviar el aislamiento técnico y hace
  que las operaciones sean más predecibles y escalables [@bruce2018microservices].

## Estrategia de despliegue

### Acerca de la tarea

#### Tipo

Decisión técnica

#### Roles encargados

- Encargado de diseño
- Encargado de despliegue

#### Descripción

Patrones de despliegue identificados en la literatura, los patrones fueron
obtenidos de [@richardson2018microservices].

> Para tener mayor información acerca de los detalles de su implementación se
> recomienda consultar las fuentes citadas.

### Multiple service instances per host

#### Características

- Enfoque tradicional para el despliegue de aplicaciones
- En este enfoque se pueden hosts físicos o virtuales

- Multiples servicios son ejecutados en solo host

- La instancia de un servicio puede ser ejecutada en un proceso o en
  grupo de procesos

- Es posible ejecutar múltiples instancias en el mismo proceso o
  grupos de procesos

#### Ventajas

- El uso de recursos es relativamente eficiente

- El despliegue de la instancia de un servicio es relativamente rápido

- Debido a la falta de gastos generales, el inicio de un servicio
  suele ser muy rápido.

#### Desventajas

- Hay poco o ningún aislamiento de las instancias de los servicios, a
  menos que estén en procesos separados

- Riesgo de requisitos de recursos contradictorios

- Riesgo de versiones de dependencia en conflicto

- Dificultad al limitar los recursos consumidos por una instancia de
  servicio

- Dificultad monitorear el consumo de recursos de cada instancia de
  servicio si se implementan servicios en el mismo proceso.

- El equipo de operaciones debe conocer los destalles específicos de
  como implementar el despliegue.

### Single service instance per host

#### Características

- Cada instancia de servicio es ejecutada en aislamiento en su propio
  host

- Existen dos especializaciones para esta estrategia: Instancias por
  Máquina Virtual o por Contenedor.

#### Ventajas

- Las instancias de los servicios están asiladas unas de otras

- No hay posibilidad de conflictos en los requisitos o versiones de
  las dependencias

- Una instancia de servicio solo puede consumir como máximo los
  recursos de un solo host

- Es sencillo monitorear, administrar y volver a implementar cada
  instancia de servicio

#### Desventajas

- Menor eficiencia en la utilización de recursos

### Service instance per VM

#### Características

- Empaquetas cada servicio como una máquina virtual

- Cada servicio es una máquina virtual

- Netflix despliega sus servicios de streaming de video de esta forma

#### Tecnologías

- Animator

- Parcker.io

- Boxfuse

#### Ventajas

- Cada servicio corre en completo aislamiento

- Puedes aprovechar la infraestructura de la nube

- Abstracción de las tecnologías de implementación del servicio. Los
  servicios son comenzados y detenidos de la misma manera.

- El escalado de los servicios aumentando el número de servicios

- Soluciones de IaaS proporcionan funciones para administrar máquinas
  virtuales.

#### Desventajas

- Menor eficiencia en la utilización de recursos

- El despliegue de una nueva versión de un servicio es usualmente
  lento

- Por lo general alguien en la organización es responsable de una gran
  cantidad de trabajo pesado

### Service instance per container

#### Características

- Cada servicio se ejecuta en su propio contenedor

- Es posible limitar la memoria y los recursos de CPU de cada
  contenedor

- Tu servicio es empaquetado como una imagen

- Se pueden ejecutar múltiples contenedores en cada host fisicos o
  virtuales

#### Tecnologías

- Docker

- Solaris Zones

- Kubernetes

- Marathon

#### Ventajas

- Aíslan cada instancia de servicio una de otra

- Puedes monitorear con facilidad los recursos consumidos por cada por
  cada contenedor.

- Abstraen la tecnología usada en la implementación de tus servicios

- Cuentan con API que permite administrar tus servicios

- A diferencia de las máquinas virtuales, los contenedores son una
  tecnología ligera

- Las imágenes de contenedores son regularmente muy rápidas de
  construir

- Los contenedores son extremadamente rápidos de construir y comenzar

#### Desventajas

- La infraestructura para implementar contenedores no es tan rica como
  la infraestructura para implementar máquinas virtuales

- Cuando se trata de performance los contenedores no son tan buenos
  como las máquinas virtuales [@PerformanceConteinerVM]

### Serverless deployment

#### Características

- Empaquetado y cargado como un archivo ZIP en un provedor de la nube

- Se factura por cada solicitud en función del tiempo usado y la
  memoria consumida

- Una función lambada es una función sin estado

#### Tecnologías

- AWS Lambda

- Google Cloud Functions

- Azure Functions

#### Ventajas

- Elimina la necesidad de dedicar tiempo al trabajo pesado
  indiferenciado de administrar la infraestructura de bajo nivel. En
  su lugar, puede concentrarse en su código

- La infraestructura de implementación sin servidor es extremadamente
  elástica. Escala automáticamente sus servicios para manejar la carga

- Paga por cada solicitud en lugar de aprovisionar lo que podrían ser
  máquinas virtuales o contenedores infrautilizados.

#### Desventajas

- Limitaciones y restricciones significativas: un entorno de
  implementación sin servidor generalmente tiene muchas más
  restricciones que una infraestructura basada en máquinas virtuales o
  en contenedores.

- Fuentes de entrada limitadas: las lambdas solo pueden responder a
  solicitudes de un conjunto limitado de fuentes de entrada

- El inicio es mucha más lento

- Riesgo de latencia alta: el tiempo que tarda la infraestructura en
  aprovisionar una instancia de su función y la función en
  inicializarse puede resultar en una latencia significativa.

#### Recomendaciones

- La selección del patrón de despliegue debe de ser elegida teniendo
  en cuenta los recursos económicos, técnicos y humanos de la
  organización.

- Se ha identificado en la literatura que el patrón **Service instance
  per container** junto con un framework de orquestación como
  Kubernetes son la mejor opción para conseguir los beneficios que una
  arquitectura de microservicios ofrece (insertar cita a nuestro
  articulo)

### Recursos

- [Sam Newman: "Deploying And Testing Microservices"](https://www.youtube.com/watch?v=FotoHYyY8Bo)

## Tecnologías

### Acerca de la tarea

#### Nombre

Selección de tecnologías

#### Tipo

Decisión técnica

#### Roles encargados

- Encargado de diseño

- Encargado de despliegue

#### Descripción

La correcta selección de tecnologías en el despliegue es un aspecto
importante, ya que si se realiza un cambio de tecnología en el futuro
una vez que el proyecto ya este en marcha el costo de mucho mayor. Para
prevenir esto, se presentan un conjunto de tecnologías que se han
encontrado en la literatura y han sido usadas por los practicantes.

### Alojamiento en la nube

#### Ventajas [@computoEnNubeVD] [@computoNubeUNAM]

- Escalabilidad y flexibilidad

- Optimización de costes

- Disponibilidad

- Seguridad

- Facilidad de uso

#### Desventajas [@computoEnNubeVD] [@computoNubeUNAM]

- Control limitado

- La información esta

- Dependencia de internet

- Dependencia de los servicios de un proveedor

- Privacidad, al delegar la seguridad de la información a terceros

- Disponibilidad a cargo del proveedor, si no se llegara a recuperar
  el cliente no podría hacer nada

- Falta de control sobre recursos, una vez que la información se sube
  a la nube el cliente ya no tiene control sobre estos

- Integración, no para todos los entornos resulta sencillo una
  integración en la nube

#### Proveedores de la nube

A continuación se presentan una lista de los proveedores de la nube con
mayor presencia en el mercado.

- Amazon Web Services (AWS)

- Microsoft Azure

- Google Cloud Platform (GCP)

- DigitalOcean

- Oracle Cloud

- IBM Cloud

- Alibaba Cloud

- Kamatera

- Linode

## Servicios configurables

### Acerca de la tarea

#### Nombre

Servicios configurables

#### Tipo

Decisión técnica

#### Roles encargados

- Encargado de diseño

- Encargado de despliegue

#### Descripción

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

### Push model

#### Características

- La infraestructura de despliegue pasa las configuraciones al
  servicio usando variables de entorno del sistema operativo o un
  archivo de configuraciones.

- Con este enfoque la infraestructura de despliegue no te permite
  cambiar la configuración de un servicio en ejecución sin
  reiniciarlo.

- Existe un riesgo de que los valores de configuración comiencen a
  dispersarse a través de la elaboración de numerosos servicios

### Pull model

#### Características

- La instancia del servicio lee las propiedades de configuración de un
  servidor de configuración

- Al inicio, la instancia de un servicio busca el servicio de
  configuración por su configuración.

- La configuración para acceder al servicio de configuración es
  inyectada mediante el mecanismo de push model

#### Beneficios

- Configuración centralizada

- Descifrado transparente de información sensible

- Reconfiguración dinámica

#### Desventajas

- Es otra pieza de infraestructura que necesita ser configurada y
  mantenida

#### Recomendaciones

- En el control de versiones, junto al servicio almacenar las
  configuraciones [@bruce2018microservices]

- Siempre que sea posible, almacene los secretos en un sistema de
  gestión de secretos adecuado, o cifre los secretos con un sistema de
  gestión de claves [@bruce2018microservices] [@adkins2020building]

- Nunca registres los secretos en el control de versiones ni incrustes
  los secretos en el código fuente.[@adkins2020building]

- Nunca registre los secretos en el control de versiones ni incruste
  los secretos en el código fuente. [@adkins2020building]

- Cuando este sea un uso válido uso, crea credenciales separadas para
  humanos y servicios. [@adkins2020building]

#### Tecnologías

- Hashicorp Vault

- AWS Parameter Store

- Cloud KMS

- SQL and NoSQL databases

## Servicios observables

### Acerca de la tarea

#### Nombre:

Servicios configurables

#### Tipo:

Decisión técnica

#### Roles encargados:

- Encargado de diseño

- Encargado de despliegue

- Desarrollador

#### Descripción

La observabilidad de los microservicios debe de ser implementado en
varias capas de la arquitectura, es necesario tener saber que esta
sucediendo en la infraestructura y en los servicios. El equipo de
operaciones es responsable de la infraestructura como servidores,
bitácoras, métricas, trazabilidad de excepciones. Los desarrolladores
son responsables de que sus servicios sean observables. Para lograr esto
nivel de la capa de microservicios existen un conjunto de patrones que
nos pueden ayudar.

### Patrones de observabilidad

Solo se describen de manera general los patrones, para mayor información
acerca de ellos consultar [@richardson2018microservices]

#### Health check API

Expone un endpoint que retorna el estado del servicio

#### Log aggregation

Registra la actividad del servicio y los escribe en u servidor de
registros centralizado

#### Distributed tracing

Asigna cada solicitud externa un identificador único, rastrea las
solicitudes y su flujo entre servicios

#### Exception traking

Reporta las excepciones a un servicio de ratreo de excepciones el cual
notifica a los desarrolladores y hace el seguimiento de su estado

#### Application metrics

Almacena las métricas del servicio y las expone a un servidor de
métricas externo

#### Audit logging

Registra las acciones de los usuarios

### Microservice chassis

Este patrón es un marco que se encarga de manejar las preocupaciones y
patrones base mencionados anteriormente.

#### Beneficios

- Reduce la cantidad de código que debes escribir

- Es rápido el desarrollo de un nuevo servicio

- Te permite concentrarte en la lógica del negocio

- Se adapata a tus requisitos

#### Desventajas

- Necesitas crear un chassis para cada lenguaje y combinación de
  plataformas que uses para desarrollar los servicios

### Service mesh

Este patrón dirige todo el tráfico de red que entra y sale de los
servicios a través de una capa de red que implementa varias
preocupaciones, incluyendo interruptores de circuito, rastreo
distribuido, descubrimiento de servicios, equilibrio de carga y
enrutamiento de tráfico basado en reglas

#### Beneficios

- Evita los problemas de implementar un chassis ya que externaliza la
  implementacion de las funcionalidades

- Puede asegurar la comunicación entre procesos

#### Tecnologías

- Istio

- Linkerd

- Conduit
