# Arquitectura de un sistema de microservicos

## Arquitectura

![Capas de una arquitectura de microservicios](../imagenes/capas-msa.png)

## Ecosistema

![Entorno de producción](../imagenes/entorno-produccion-msa.png)

### Capa 1: Hardware

+ Servicios físicos en donde se ejecuraran los servicios.
+ Los servidores pueden ser propiedad de la empresa o rentados a proveedores de la nube.
+ La gestión de los servidores forma parte de esta capa, esto incluye la instalación 
del sistema operativo, la configuración de tecnologías que se ejecutan sobre la 
la capa de hardware para su abstracción.
+ Cada host debe ser provisionado y configurado usando herramientas de administración 
de la configuración.
+ Es necesario tener un monitoreo y bitácora a nivel de host, para lograr un rápido 
diagnostico, mitigación y resolución de errores.

#### Herramientas

### Capa 2: Comunicación

+ Esta capa contiene la red, DNS, RCPs, endpoints del API, service discovery, 
service registry y balancedores de carga.
+ Una MSA requiere que se implementen en esta capa: service discovery, service 
registry y load balancing; con el fin de tener una efectiva y eficiente comunicación.

**Tecnologías de descrubrimiento de servicios**

+ etcd
+ Consult
+ Hyperbahn
+ ZooKeeper


**Tecnologías de balanceamiento de cargas**

+ Amazon Web Services Elastic Load Balancer
+ Netflix Eureka
+ HAProxy
+ Nginx

### Capa 3: Plataforma de la aplicación

+ Esta capa contiene todas las herramientas internas que son independientes a los 
microservicios.
+ Esta capa se desarrolla de tal manera que los equipos de desarrollo de microservicios 
no tengan que diseñar, construir o mantener nada más que su propios microservicios.

Esta capa debe de contar con:

+ Herramientas internas para los desarrolladores
+ Un proceso de desarrollo estandarizado
+ Un centralizado y automatizado sistema de construcción y entrega.
+ Pruebas automatizadas
+ Una solución de despliegue estandarizada y centralizada
+ Un centralizado sistema de monitoreo y bitácoras a nivel de microservicios.

> Agregar ejemplos de plataforma *plataforma mercado libre, podcast peladonerd"

### Capa 4: Microservicios

+ En esta capa se encuentran los microservicios y lo correspondiente a ellos.
+ Los microservicios deben estar abstraidos de las capas de infraestructura.
+ Lo único que no se abstrae en esta capa son las configuraciones especificas de cada microservicio.
+ Una buena práctica es centralizar las configuraciones de las aplicaciones así como la de las herramientas.

## Aspectos a considerar del despliegue

+ El despliegue debe de ser aburrido
+ Cuanto más rápido pueda desplegar nuevos servicios y cambios, más rápido podrá 
iterar y ofrecer valor a sus usuarios finales [^1].
+ El despliegue debe maximizar la seguridad: debes validar en la medida de lo posible 
que un determinado cambio no afectará negativamente a la estabilidad de un servicio [^1].
+ La consistencia de proceso de despliegue en diferentes servicios, independientemente 
de la pila de tecnología subyacente, ayuda a aliviar el aislamiento técnico y hace 
que las operaciones sean más predecibles y escalables [^1].

[^1]: Morgan Bruce and Paulo A Pereira. Microservices in action. Simon and Schuster, 2018.
