# Fundamentos

## Sistemas distribuidos
Un sistema distribuido es aquel en el cual componentes de hardware o software situados 
en computadoras conectadas en red se comunican y coordinan sus acciones solo mediante 
el paso de mensajes [^1]. 

### Características

#### Concurrencia
En uina red de computadoras, la ejecución concurrente de programas es la norma. 
Pueden trabajar en computadoras diferentes dos personas mientras comparten 
recursos como páginas web o archivos cuando sea necesario. La capacidad del 
sistema para manejar recursos compartidos se puede aumentar agregando más 
recursos (por ejemplo, computadoras) a la red.

#### Falta de un reloj global
Cuando los programas necesitan cooperar, coordinan sus acciones mediante el intercambio 
de mensajes. La coordinación estrecha a menudo depende de una idea compartida del
momento en que ocurren las acciones de los programas. Pero resulta que hay límites en la
precisión con la que las computadoras en una red pueden sincronizar sus relojes: no existe
una noción global única de la hora correcta.

#### Fallos independientes
Todos los sistemas informáticos pueden fallar, y es responsabilidad de los diseñadores de
sistemas planificar las consecuencias de posibles fallas. Los sistemas distribuidos pueden
fallar de nuevas maneras. Las fallas en la red provocan el aislamiento de las computadoras
que están conectadas a ella, pero eso no significa que dejen de funcionar.


### Retos

+ Heterogeneidad
+ Apertura
+ Seguridad
+ Escalabilidad
+ Manejo de fallas
+ Concurrencia
+ Transparencia


## Arquitectura orientada a servicios

La arquitectura orientada a servicios (SOA) es un paradigma para la realización y el
mantenimiento de procesos empresariales que abarcan grandes sistemas distribuidos. Se
basa en tres conceptos técnicos principales: los servicios, la interoperabilidad a través de
un bus de servicios empresariales y el acoplamiento flexible [^2].
SOA no es una arquitectura concreta, es algo que conduce a una arquitectura concreta.
Es un estilo, paradigma, concepto, una forma de pensar, un sistema de valores que conduce
a ciertas decisiones concretas a la hora de diseñar una arquitectura de software concreta.


### SOA y Microservicios

Hay una relación entre SOA y microservicios, ambas arquitecturas buscan resolver los
retos de una aplicación monolítica grande. Sin embargo, a pesar de contar con importantes
aportaciones, SOA sigue dejando muchas cosas sin entender; no consigue hablar de las
formas prácticas en el mundo real. En cambio, el enfoque de microservicios ha surgido de
su uso en el mundo real, tomando la mejor comprensión de los sistemas y la arquitectura
para hacer bien SOA [^3].
Existen varias cosas en las que difiere SOA de microservicios, sin embargo la principal 
diferencia entre los dos enfoques se reduce al alcance. La arquitectura orientada a
servicios (SOA) tiene un alcance empresarial, mientras que la arquitectura de microservicios 
tiene un alcance de aplicación [^4]. Además del alcance podemos encontrar
ciertas diferencias en la implementación de algunos conceptos los cuales se presentan a
continuación.

## Arquitectura de Microservicios

Una Arquitectura de Microservicios (MSA, por sus siglas en inglés) como un 
estilo arquitectónico con un enfoque para desarrollar un aplicación como un 
conjunto de pequeños servicios, cada uno ejecutándose en su propio proceso y
comunicándose mediante mecanismos ligueros [^5]. Las organizaciones
han encontrado que adoptando una MSA pueden entregar software con mayor rapidez y
adoptar nuevas tecnologías, además, brindan una mayor libertad para reaccionar y tomar
diferentes decisiones permitiendo responder más rápido a los cambios inevitables que los
afectan.

En comparación con una arquitectura monolítica la cual podemos definir como una
aplicación con un único código base/repositorio que expone decenas o cientos de servicios
diferentes a sistemas o consumidores externos utilizando diferentes interfaces como servicios
web y/o servicios REST. El código base puede desplegarse en entornos de un solo servidor
o en múltiples servidores usando un balanceador de cargas.

Los conceptos fundamentales detrás de una MSA no son nuevos, sin embargo, la implementación 
contemporánea que ha tenido si lo ha sido. Su adopción a sido impulsada en
parte por los retos de escalabilidad, la falta de eficiencia, la lentitud de los desarrolladores
y las dificultades para adoptar nuevas tecnologías que surgen cuando los sistemas complejos 
están contenidos en una gran aplicación monolítica y se despliegan como tal [^6].

Con una MSA una aplicación puede fácilmente escalar vertical y horizontalmente,
la productividad y velocidad de los desarrolladores incrementa drásticamente y tecnologías
viejas pueden ser ser intercambiadas con facilidad con las más nuevas. Sin embargo, una
MSA introduce retos por si misma: un ecosistema exitoso y escalable require una 
infraestructura estable y sofisticada; cambios radicales en la estructura organizativa de una
empresa para permitir las nuevas estructuras de equipos que se derivan de la adopción de
esta arquitectura; finalmente uno de los mayores retos es la necesidad de estandarización
de la arquitectura de los servicios así como sus requisitos para garantizar la confianza y la
disponibilidad [^6].

### Beneficios

+ Heterogeneidad de la tecnología
+ Resilencia
+ Escalamiento
+ Facilidad de despliegue
+ Alineación organizativa
+ Reusabilidad
+ Optimización en la capacidad de sustitución


## Cultura DevOps

Dada la importancia de la madurez del despliegue en los microservicios, la actualización
constante de cada servicio y la necesidad de automatización, se ha comprobado que la
implantación de una cultura DevOps junto con sus prácticas y herramientas cubre los
requisitos de esta arquitectura [^7].

Podemos definir a DevOps como un conjunto de principios y prácticas que permiten una
mejor comunicación y colaboración entre las partes interesadas relevantes para especificar,
desarrollar y operar productos y servicios de software y sistemas y mejoras continuas en
todos los aspectos del ciclo de vida [^8].

El término DevOps evolucionó a partir de la disponibilidad de herramientas de crea-
ción, empaquetado y despliegue de aplicaciones totalmente automatizadas, junto con el
reconocimiento de que las organizaciones de tecnología de la información (TI) no estaban
preparadas para utilizar esas herramientas de forma eficaz.

Podemos definir a DevOps como un conjunto de principios y prácticas que permiten una
mejor comunicación y colaboración entre las partes interesadas relevantes para especificar,
desarrollar y operar productos y servicios de software y sistemas y mejoras continuas en
todos los aspectos del ciclo de vida [^8].

### Principios

+ Negocio o misión primero
+ Centrado en el cliente
+ Cambio a la izquierda y todo continuo
+ Pensamiento sistemático

### Prácticas

+ Gestión de la configuración (CM)
+ Automatización de infraestructura
+ Integración continua (CI)
+ Entrega Continua (CD)
+ Despliegue continuo
+ Bitácora (Loggin)
+ Monitoreo



[^1]: Couloris, G., Dollimore, J., y Kindberg, T. (1994). Distributed systems:
Concepts and design 2nd ed. Addison-Wesley, 1 (99), 4
[^2]: Josuttis, N. M. (2007). Soa in practice: the art of distributed system design. O’Reilly
Media, Inc
[^3]: Newman, S. (2015). Building microservices: designing fine-grained systems. O’Reilly
Media, Inc
[^4]: Team, I. C. (2021, 5). Soa vs. microservices: What’s the difference? | ibm. Consultado de
https://www.ibm.com/cloud/blog/soa-vs-microservices
[^5]: Lewis, J., y Fowler, M. (2014, 3). Microservices. Consultado de https://martinfowler.com/articles/microservices.html
[^6]: Fowler, S. J. (2016). Production-ready microservices: building 
standardized systems across an engineering organization. O’Reilly Media, Inc.
[^7]: Bolscher, R., y Daneva, M. (2019). Designing Software Architecture to 
Support Continuous Delivery and DevOps: A Systematic Literature Review. En 
Proceedings of the 14th international conference on software technologies (pp. 27–39)
[^8]: IEEE. (2021). IEEE standard for devops: Building reliable and secure 
systems including application build, package, and deployment. IEEE Std 2675-2021 , 1-91. doi: 10.1109/IEEESTD.2021.9415476
