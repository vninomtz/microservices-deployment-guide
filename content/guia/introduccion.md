# Introducción

El desarrollo de software moderno requiere métodos agiles para desplegar y
escalar cada vez más sistemas distribuidos con alta demanda. Los practicantes han
adoptado la arquitectura de microservicios para afrontar los retos generados
por las demandas del software moderno. Sin embargo, la adopción de esta
arquitectura también crea retos técnicos y organizacionales, realentizando
potencialmente a los equipos de desarrollo y operaciones, que requieren más
tiempo y esfuerzo para implementar un proceso de despliegue de calidad que les
permita liberar constantemente nuevas características a producción.
La adopción de una cultura DevOps, junto con sus prácticas y herramientas,
mitigan algunos de estos nuevos retos. En este trabajo se presenta la propuesta
de una guía para el despliegue de sistemas con una arquitectura de
microservicios, considerando las prácticas de una cultura DevOps,
proporcionando a los practicantes un camino base para comenzar a implementar
la plataforma que una arquitectura de microservicios requiere.

## Objetivo

El objetivo de este trabajo es asistir a los Arquitectos de Software,
Ingenieros de Software, Ingenieros de Infraestructura, Ingenieros de Confiabilidad
del Sitio (SRE), desarrolladores, equipos DevOps o a todos aquellos que tengan las
responsabilidad de diseñar e implementar los procesos e infraestructura necesaria
para el despliegue de sistemas con arquitectura de microservicios.

## Contenido

La guía presentada propone prácticas, principios y tecnologías encontradas a
través de un Mapeo Sistemático de la Literatura (MSL) [@nino2021microservices] y una revisión de
literatura gris, estas tuvieron como objetivo la identificación del proceso y
practicas usadas en la industria para el despliegue de una arquitectura basada
en microservicios considerando principios de una cultura DevOps.

## Casos de uso

+ La guía puede ser usada por aquellos que están en el proceso de migración de un
sistema monolítico a una arquitectura de microservicios.
+ La guía puede ser usada por aquellos que ya implementaron esta arquitectura
pero quieren implementar nuevas prácticas relacionadas con DevOps o sus principios.
+ La guía puede ser usada para mejorar procesos existentes en la organización
alineandose a los principios referenciados.

## Estructura de la guía

La guía se encuentra estructurada tomando en cuenta un modelo de procesos para
la implementación de microservicios, para el modelado se utilizó SPEM [^1]. En
cada sección se presentan principios, tareas, artefactos, tecnologías,
recomendaciones y recursos encontrados en la literatura.

[^1]: [Software & Systems Process Engineering Meta-Model Specification](https://www.omg.org/spec/SPEM/2.0/PDF)

**Sección 1 Introducción,** como se nombre lo indica es una introducción al tema de microservicios así como a los conceptos relacionados con este estilo arquitectónico, incluye un glosario que los lectores puden consultar para enter coceptos comúnes usados a lo largo de la guía.

**Sección 2 Procesos,** en esta sección se presenta el modelado de las actividades y tareas utilizadas a lo largo de la guía, el moleado de los procesos fue realizado utilizando la notación de SPEM.

**Sección 3 Diseño del despliegue,** en esta sección se incluyen las actividades y tareas que se deben llevar cabo en la etapa de diseño enfocadas al despliegue de microservicios, se cubren los patrones existentes del despliegue, tecnologías y prácticas comúnes.

**Sección 4 Administración del entorno de desarrollo,** cubren las actividades y tareas que deben ser implementadas para el correcto desarrollo e integración de cambios en cada uno de los microservicios a desarrollar. Estas tareas son requisito para la siguiente sección *Pipeline de despliegue*.

**Sección 5 Pipeline de despliegue,** es todo sobre las tareas que se deben implementar para liberar continuamente cambios a un ambiente de producción. Se describen las prácticas de *Integración y Entrega Continua*.

**Sección 6 Administración de la infraestructura,** cubren actividades y prácticas  para el manejo de la infraestructura en la organización. Se incluyen prácticas como *Infraestructura como código*.

## Fundamentos

### Sistemas distribuidos

Un sistema distribuido es aquel en el cual componentes de hardware o software situados 
en computadoras conectadas en red se comunican y coordinan sus acciones solo mediante 
el paso de mensajes [@coulouris2001distributed].

#### Características

##### Concurrencia

En uina red de computadoras, la ejecución concurrente de programas es la norma. 
Pueden trabajar en computadoras diferentes dos personas mientras comparten 
recursos como páginas web o archivos cuando sea necesario. La capacidad del 
sistema para manejar recursos compartidos se puede aumentar agregando más 
recursos (por ejemplo, computadoras) a la red.

##### Falta de un reloj global

Cuando los programas necesitan cooperar, coordinan sus acciones mediante el intercambio 
de mensajes. La coordinación estrecha a menudo depende de una idea compartida del
momento en que ocurren las acciones de los programas. Pero resulta que hay límites en la
precisión con la que las computadoras en una red pueden sincronizar sus relojes: no existe
una noción global única de la hora correcta.

##### Fallos independientes

Todos los sistemas informáticos pueden fallar, y es responsabilidad de los diseñadores de
sistemas planificar las consecuencias de posibles fallas. Los sistemas distribuidos pueden
fallar de nuevas maneras. Las fallas en la red provocan el aislamiento de las computadoras
que están conectadas a ella, pero eso no significa que dejen de funcionar.

#### Retos

+ Heterogeneidad
+ Apertura
+ Seguridad
+ Escalabilidad
+ Manejo de fallas
+ Concurrencia
+ Transparencia

### Arquitectura orientada a servicios

La arquitectura orientada a servicios (SOA) es un paradigma para la realización y el
mantenimiento de procesos empresariales que abarcan grandes sistemas distribuidos. Se
basa en tres conceptos técnicos principales: los servicios, la interoperabilidad a través de
un bus de servicios empresariales y el acoplamiento flexible [@josuttis2007soa].
SOA no es una arquitectura concreta, es algo que conduce a una arquitectura concreta.
Es un estilo, paradigma, concepto, una forma de pensar, un sistema de valores que conduce
a ciertas decisiones concretas a la hora de diseñar una arquitectura de software concreta.

#### SOA y Microservicios

Hay una relación entre SOA y microservicios, ambas arquitecturas buscan resolver los
retos de una aplicación monolítica grande. Sin embargo, a pesar de contar con importantes
aportaciones, SOA sigue dejando muchas cosas sin entender; no consigue hablar de las
formas prácticas en el mundo real. En cambio, el enfoque de microservicios ha surgido de
su uso en el mundo real, tomando la mejor comprensión de los sistemas y la arquitectura
para hacer bien SOA [@newman2015].
Existen varias cosas en las que difiere SOA de microservicios, sin embargo la principal 
diferencia entre los dos enfoques se reduce al alcance. La arquitectura orientada a
servicios (SOA) tiene un alcance empresarial, mientras que la arquitectura de microservicios 
tiene un alcance de aplicación [^2]. Además del alcance podemos encontrar
ciertas diferencias en la implementación de algunos conceptos los cuales se presentan a
continuación.

[^2]: Team, I. C. (2021, 5). Soa vs. microservices: What’s the difference? | ibm. Consultado de
https://www.ibm.com/cloud/blog/soa-vs-microservices

### Arquitectura de Microservicios

Una Arquitectura de Microservicios (MSA, por sus siglas en inglés) como un 
estilo arquitectónico con un enfoque para desarrollar un aplicación como un 
conjunto de pequeños servicios, cada uno ejecutándose en su propio proceso y
comunicándose mediante mecanismos ligueros [^3]. Las organizaciones
han encontrado que adoptando una MSA pueden entregar software con mayor rapidez y
adoptar nuevas tecnologías, además, brindan una mayor libertad para reaccionar y tomar
diferentes decisiones permitiendo responder más rápido a los cambios inevitables que los
afectan.


[^3]: Lewis, J., y Fowler, M. (2014, 3). Microservices. Consultado de https://martinfowler.com/articles/microservices.html

En comparación con una arquitectura monolítica la cual podemos definir como una
aplicación con un único código base/repositorio que expone decenas o cientos de servicios
diferentes a sistemas o consumidores externos utilizando diferentes interfaces como servicios
web y/o servicios REST. El código base puede desplegarse en entornos de un solo servidor
o en múltiples servidores usando un balanceador de cargas.

Los conceptos fundamentales detrás de una MSA no son nuevos, sin embargo, la implementación 
contemporánea que ha tenido si lo ha sido. Su adopción a sido impulsada en
parte por los retos de escalabilidad, la falta de eficiencia, la lentitud de los desarrolladores
y las dificultades para adoptar nuevas tecnologías que surgen cuando los sistemas complejos 
están contenidos en una gran aplicación monolítica y se despliegan como tal [@fowler2016production].

Con una MSA una aplicación puede fácilmente escalar vertical y horizontalmente,
la productividad y velocidad de los desarrolladores incrementa drásticamente y tecnologías
viejas pueden ser ser intercambiadas con facilidad con las más nuevas. Sin embargo, una
MSA introduce retos por si misma: un ecosistema exitoso y escalable require una 
infraestructura estable y sofisticada; cambios radicales en la estructura organizativa de una
empresa para permitir las nuevas estructuras de equipos que se derivan de la adopción de
esta arquitectura; finalmente uno de los mayores retos es la necesidad de estandarización
de la arquitectura de los servicios así como sus requisitos para garantizar la confianza y la
disponibilidad [@fowler2016production].

#### Beneficios

+ Heterogeneidad de la tecnología
+ Resilencia
+ Escalamiento
+ Facilidad de despliegue
+ Alineación organizativa
+ Reusabilidad
+ Optimización en la capacidad de sustitución

### Cultura DevOps

Dada la importancia de la madurez del despliegue en los microservicios, la actualización
constante de cada servicio y la necesidad de automatización, se ha comprobado que la
implantación de una cultura DevOps junto con sus prácticas y herramientas cubre los
requisitos de esta arquitectura [@bolscher2019].

Podemos definir a DevOps como un conjunto de principios y prácticas que permiten una
mejor comunicación y colaboración entre las partes interesadas relevantes para especificar,
desarrollar y operar productos y servicios de software y sistemas y mejoras continuas en
todos los aspectos del ciclo de vida [@olszewska2021ieee].

El término DevOps evolucionó a partir de la disponibilidad de herramientas de crea-
ción, empaquetado y despliegue de aplicaciones totalmente automatizadas, junto con el
reconocimiento de que las organizaciones de tecnología de la información (TI) no estaban
preparadas para utilizar esas herramientas de forma eficaz.

Podemos definir a DevOps como un conjunto de principios y prácticas que permiten una
mejor comunicación y colaboración entre las partes interesadas relevantes para especificar,
desarrollar y operar productos y servicios de software y sistemas y mejoras continuas en
todos los aspectos del ciclo de vida [@olszewska2021ieee].

#### Principios

+ Negocio o misión primero
+ Centrado en el cliente
+ Cambio a la izquierda y todo continuo
+ Pensamiento sistemático

#### Prácticas

+ Gestión de la configuración (CM)
+ Automatización de infraestructura
+ Integración continua (CI)
+ Entrega Continua (CD)
+ Despliegue continuo
+ Bitácora (Loggin)
+ Monitoreo

## Glosario

### *Máquina virtual*

Es un entorno virtual que funciona como sistema informático virtual con su 
propia CPU, memoria, interfaz de red y almacenamiento, pero se crea en un 
sistema de hardware físico, ya sea en las instalaciones o no.

### *Contenedor*

Un contenedor es una unidad estándar de software que empaqueta el código y 
todas sus dependencias para que la aplicación se ejecute de forma rápida y 
confiable de un entorno informático a otro.

### *Despliegue*

Etapa de un ciclo de vida en el que se pone en funcionamiento un sistema y se 
resuelven los problemas de transición.

### *Infraestructura*

Instalaciones como energía, enfriamiento y seguridad física del centro de 
datos, redes, hardware y software necesarios para respaldar el ciclo de vida 
de los sistemas y mantener los servicios de tecnología de la información (TI).

### *Pipeline*

Técnica de diseño de software o hardware en la que la salida de un proceso 
sirve como entrada a un segundo, la salida del segundo proceso sirve como 
entrada a un tercero, y así sucesivamente, a menudo con simultaneidad dentro 
de un tiempo de ciclo único.
