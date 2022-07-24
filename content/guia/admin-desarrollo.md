# Administración de la configuración y entorno de desarrollo

A diferencia de una aplicación monolítica en la cual se puede optimizar el despliegue 
para un único caso, en un sistema basado en microservicios es necesario escalar 
y actualizar múltiples servicios, los cuales pueden estar escritos en distintos 
lenguajes de programación y frameworks los cuales a su vez cuentan con sus propias 
dependencias. 
Debido a estas particularidades, es necesario contar con un consistente y robusto 
mecanisco de despliegue que cuente con las herramientas e infraesructura necesaria 
para poder lograr aprovechar los beneficios de esta arquitectura.
Es posible alcanzar estos mecanismos maduros de despliegue mediante la implementación 
de principios y prácticas DevOps como: *Integración Continua (CI)* y *Entrega Continua (CD)*.

## Acerca de la sección

En esta sección se presentan las tareas necesarias para implementar la práctica 
de *Integración Continua* las cuales son indispensables para poder lograr entregar 
continuamente software de calidad. Las subseciones descritas derivan de las tareas 
mostradas en la sección de [_Preparacion de la plataforma_](#preparacion-de-la-plataforma)


## Administración de la configuración

### Acerca de la tarea

#### Nombre

Configuration Management CM

#### Tipo

Proceso DevOps

#### Propósito 

Gestionar y controlar los elementos y las configuraciones del sistema a
lo largo del ciclo de vida. La gestión de la configuración (CM) también
gestiona la coherencia entre un producto y su definición de
configuración asociada. [@standarDevOps]

#### Aspectos que involucra CM

- Sistemas de gestión de código fuente
-   Construcción
-   Empaquetado
-   Despliegues automatizados
-   Verificación de la línea de base

#### Beneficios

- Facilita a las organizaciones el análisis del impacto debido al cambio de configuración
- Permite el aprovisionamiento automatizado en diferentes sistemas como dev, QA y prod
- Facilita la auditoría, la contabilidad y la verificación de los sistemas
- Reduce el trabajo redundante al garantizar la coherencia
- Gestiona eficazmente las actualizaciones simultáneas
- Evita los problemas relacionados con la configuración de una única versión de la verdad
- Simplifica la coordinación entre los miembros del equipo de desarrollo y operaciones
- Es útil para rastrear los defectos y resolverlos a tiempo
- Ayuda en el mantenimiento predictivo y preventivo

### Salidas 

Como resultado de una exitosa implementación de la configuración se
obtienen las siguientes salidas [@standarDevOps]

- La cadena de evidencias es verificable desde las líneas de base del 
código fuente a través de los objetos derivados persistentes hasta
las líneas de base verificables.
- El marco de gestión de la configuración permite confirmar que se han
desplegado los elementos de configuración previstos e identificar
cualquier cambio no autorizado (debido a un error involuntario o a
una intención maliciosa) en los entornos controlados.
- Los cambios gestionados son aceptados y aplicados por las partes
interesadas afectadas

### Lista de verificación 

Si ya cuentas con una buena estrategia de administración de la
configuración serás capas de responder afirmativamente a las siguientes
preguntas. Estas preguntas fueron obtenidas de [@humble2010continuous]

- ¿Puedo reproducir exactamente cualquiera de mis entornos, incluyendo
la versión del sistema operativo, su nivel de parches, la
configuración de la red, la pila de software, las aplicaciones
desplegadas en ella y su configuración?
- ¿Puedo realizar fácilmente un cambio incremental en cualquiera de
estos elementos individuales y desplegar el cambio en todos y cada
uno de mis entornos?
- ¿Puedo ver fácilmente cada uno de los cambios que se han producido
en un entorno concreto y rastrearlo para ver exactamente cuál ha
sido el cambio, quién lo ha realizado y cuándo lo ha hecho?
- ¿Puedo satisfacer todas las normas de cumplimiento a las que estoy sujeto?
- ¿Es fácil para cada miembro del equipo obtener la información que
necesita y realizar los cambios que necesitan? ¿O la estrategia se
interpone en la eficacia de la entrega, lo que supone un aumento de
la duración del ciclo y una reducción de la retroalimentación?

### Actividades 

De acuerdo con [@standarDevOps] las organizaciones deben de cumplir con
las siguientes tareas para cumplir con los procedimientos del proceso de
administración de la configuración. Las actividades mencionadas en el
estándar solo se mencionarán superficialmente, si se desea profundizar
en el tema se pueden consultar las fuentes referenciadas.

- Identificar las configuraciones y los elementos de configuración.
- Gestionar la configuración del software que se está integrando continuamente.
- Gestionar los cambios de configuración.
- Realizar auditorías de CM

## Control de versiones

### Acerca de la tarea

#### Nombre

Source Code Management (SCM)

#### Tipo

Práctica DevOps

#### Propósito 

Mantener varias versiones de los archivos, de modo que cuando se
modifica un archivo se puede seguir accediendo a las revisiones
anteriores. También son un mecanismo a través del cual colaboran las
personas que participan en la entrega de software.

#### Beneficios 

Estos beneficios fueron obtenidos en [@vadapalli2018devops]
[@devOpsStateGoogle21]

- Administración de capacidad: Coordinación de servicios entre los miembros de 
un equipo de desarrollo de software.
- Única fuente de verdad para cualquier versión menor o mayor.
- Revisión de los cambios antes de su implementación
- Seguimiento de la co-autoría, la colaboración y las contribuciones individuales.
- Auditabilidad: Auditoría de los cambios de código y facilidad de reversión
- Recuperación ante desastres
- Mayor calidad en el software
- Respuesta a defectos
- Reproducibilidad
- Trazabilidad

### Elementos que se deben versionar

- Código fuente y dependencias
- Secuencias de comandos: esquemas de base de datos, comandos de configuración, etcétera
- Herramientas y artefactos de creación de entornos
- Archivos usados para crear y componer contenedores o máquinas virtuales
- Secuencia de comandos para el empaquetado de código, migraciones de base de datos y aprovisionamiento de entornos
- Configuraciones de servicios de orquestación
- Archivos y configuración de servicios de la nube
- Secuencia de comandos o configuración necesaria para crear infraestructura

### Tecnologías

Dentro de las tecnologías y herramientas que podemos encontrar se
encuentran las siguientes, existen más de ellas pero se considera que
estas son las que más presencia y más necesidades han cumplido en los
proyectos de la industria.

|  Herramienta          | Descripción                                                                                                                      |  Información                                                |
|  ---------------------|----------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------ |
|  GIT                  | Open-source, Distributed version control system                                                                                  | https://git-scm.com/                                        |
|  SVN                  | Open-source, Version control system                                                                                              | https://subversion.apache.org/                              |
|  Mercurial            | Open-source, Distributed version control system                                                                                  | https://www.mercurial-scm.org/                              |
|  Azure DevOps Server  | Licenciado, Conjunto de herramientas de desarrollo de software en colaboración hospedadas en el entorno local, Plataforma DevOps | https://azure.microsoft.com/es-mx/services/devops/server/   |
|  ClearCase            | Licenciado, Control y acceso a artefactos incluyendo código, requisitos, documentación etc.                                      | https://www.ibm.com/products/rational-clearcase             |
|  GitHub               | Repositorio de gestión de proyectos alojado en línea basada en GIT                                                               | https://github.com/                                         |
|  GitLab               | Repositorio de gestión de proyectos alojado en línea basada en GIT, Plataforma DevOps                                            | https://about.gitlab.com/                                   |
|  Bitbucket            | Repositorio de gestión de proyectos alojado en línea basada en GIT                                                               | https://bitbucket.org/                                      |

#### Características 

##### GitHub

- Revisión de código
- Integración con otras herramientas
- GitHub Actions, permite automatizar flujos de integración
- Mayor popularidad
- Herramientas de construcción con servicios de terceros

##### GitLab

- Revisión de código
- Herramienta de construcción
- Herramientas para más etapas del desarrollo
- Auto Hospedaje en cualquier plan

##### Bitbucket

- Revisión de código
- Integración directa con Jira, Bamboo, Crucible y Jenkins
- Hosting autogestionada con estructura de precios escalonada

#### Recomendaciones

Github es una plataforma que ofrece muchas más facilidades, está bien
equipada para manejar proyectos personales o de pequeños equipos. GitLab
te permite disponer de un entorno abierto en el que puedes manejar tus
recursos, para equipos pequeños y empresas. Por otra parte, te ofrece
una serie de herramientas para las prácticas DevOps. Bitbucket es una
solución rentable para una empresa o negocios para alojar código privado
y propietario.

### Directrices de desarrollo

#### Prácticas 

- Hacer confirmaciones (commits) de código frecuentemente
- No hacer confirmaciones (commits) de código roto
- Use mensajes significativos en tus confirmaciones (commits)

### Recomendaciones 

Para asegurar que se realicen mensajes significativos en las
confirmaciones puedes hacer uso de la especificación

### Integración y manejo de ramas

Existen un conjunto de patrones para la gestión de ramas de código
fuente [@PatternsSCB], algunos de ellos son:

- Ramas de funciones (FeatureBranch)
- Desarrollo basado en troncos (Base Trunk Development)
- Banderas de funciones (Features Flags)

#### Recomendaciones 

Dentro de estos patrones el que más se adapta a los principios y
prácticas DevOps como Integración Continua es el desarrollo basado en 
troncos. Paul Hammant tiene un sitio dedicado a este modelo en el que 
puedes echarle un vistaso en [Trunk Based Development](https://trunkbaseddevelopment.com/) 


## Administración de la construcción

### Acerca de la tarea

#### Nombre:

Build Management

#### Tipo:

Práctica DevOps

#### Propósito: 

Proceso para preparar el ambiente de construcción para montar todos los
componentes de la aplicación software como un producto acabado y viable,
apto para su finalidad. El código fuente, el compilado, dependencias y
componentes son juntados para funcionar como una unidad cohesiva.

#### Beneficios

- Asegura que el software se puede usar
- Asegura la reusabilidad y la confiabilidad del software en ambientes de clientes
- Incrementa la eficiencia y calidad del software

### Tecnologías

- Ant
- Buildr
- Maven
- Gradle
- Grunt
- MSBuild
- Visual Build
- Make (CMake / QMake)

### Automatización

#### Script de construcción

Uno de los aspectos más importantes en la construcción es el Script,
este es el que permitirá automatizar el proceso de integración continua.

##### Un script de ejecutar las siguientes tareas:

- Compilar el código fuente
- Integrar la base de datos o persistencia
- Ejecución de las pruebas
- Realizar la inspección del código
- Empaquetar y desplegar el software
- Es importante mencionar que este script puede ejecutar más tareas para asegurar la calidad del software.

##### Para lograr este script es importante seguir las siguientes recomendaciones:

- Separa el script de construcción del tu IDE
- Centraliza todos tus artefactos
- Crea una consistente estructura de directorios
- Crea archivos de configuración para cada ambiente
- Crea tipos de construcción para cada ambiente como (local, integración, QA, producción)


## Repositorio de artefactos

### Acerca de la tarea

#### Nombre:

Artifacts Repository Management

#### Tipo:

Práctica DevOps

#### Proposito

Los artefactos son archivos que se crean como resultado de un proceso de 
desarrollo de software, estos pueden ser paquetes, contenedores, archivos de 
configuración, documentos, entre otros. Estos artefactos son generados en la
tarea de [Administración de la construcción](./admin-entorno-desarrollo) después 
de la ejecución de los scripts de automatización.

El propósito de esta tarea es lidiar con los problemas de complejidad y confiabilidad 
mediante la centralización de los distintos artefactos generados en una sola ubicación.
Gracias a esto, se tiene mayor control sobre los artefactos y cómo se usan.

#### Tipos de artefactos

En una arquitectura de microservicios pueden almacenarse distintos tipos de artefactos 
dependiendo del patron de despliegue usado. 
- Imagenes de contenedores
- Imagenes de máquinas virtuales con el código del servicio
- Binarios del del compilado empaquetado

#### Beneficios

- Manejo del ciclo de vida de los artefactos
- Asegura que las construcciones son repetibles y reproducibles
- Acceso organizado a los artefactos
- Actúa como una sola fuente de información e integración de CI/CD para tus artefactos
- Permite compartir construcciones entre equipos o clientes
- Disponibilidad de los artefactos con control de acceso
- Proporciona características como la administración de versiones, el análisis de vulnerabilidades y los flujos de trabajo de aprobación.
- Habilita el control de acceso unificado y la configuración coherente.
- Admite muchas de las capacidades de DevOps para optimizar el rendimiento organizativo.

### Tipos repositorios de artefactos

- **Locales:** Un repositorio físico y administrado localmente en el que se implementan los artefactos.
- **Remotos:** Un proxy de almacenamiento en caché para un repositorio que se administra en una URL remota. Puede eliminar artefactos de un repositorio remoto, pero no puede implementar nuevos artefactos en él.
- **Virtuales:** Un repositorio agregado que combina repositorios locales y remotos bajo una URL común.

### Tecnologías

- Sonatype Nexus (comercial)
- NuGet (open source)
- Docker Hub (open source solo imagenes públicas)
- Pulp (open source)
- Npm (open source)
- Apache Archiva (open source)
- Bytesafe (comercial)
- CloudRepo (comercial)
- Cloudsmith Package (comercial)
- Dist (comercial)
- Inedo ProGet (comercial)
- JFrog Artifactory Open Source (open source)
- JFrog Artifactory Pro (comercial)
- MyGet (comercial)
- Sonatype Nexus OSS (open source)
- Sonatype Nexus Pro (comercial)
- packagecloud.io (comercial)
- Reposilite (open source)

### Recomendaciones

Si quieres profundizar en el tema de versionado te recomendamos que revises el artículo Best Practices for Artifact Versioning in Service-Oriented Systems [@bestPracticesArtifactSOA] 
en el cual se presenta información extendida sobre el tema, sin embargo, te dejamos algunas recomendaciones básicas para comenzar. 

#### Crear y publicar artefactos

- Cada artefacto debe estar referenciado a un solo repositorio
- Cada vez que se cree una nueva versión del artefacto automáticamente publiquela en su repositorio
- Implemente políticas para limpiar automáticamente versiones antiguas de sus artefactos
- Actualice el estado de su artefacto al estado correcto en el que se encuentra
- Si equipos u organizaciones externas estan consumiendo tus artefactos asegúrese que los estados son visibleas para todos ellos.

#### Convenciones de nomenclatura de repositorios

Puedes usar la estructura de cuatro partes que recomienda que recomienda JFrog [^5] la cual esta conformada de la siguiente manera:

```sh
<equipo/claveProyecto>-<tecnología>-<madurez>-<localizador>
```
1. El nombre del proyecto, producto o equipo como el identificador principal del proyecto.
2. La tecnología, herramienta o tipo de paquete que se utiliza.
3. El nivel de madurez del artefacto, como las etapas de desarrollo, preparación o lanzamiento.
4. El localizador, la topología física de los artefactos.

[^5]: [Best Practices for Structuring and Naming Artifactory Repositories](https://jfrog.com/whitepaper/best-practices-structuring-naming-artifactory-repositories/) 

