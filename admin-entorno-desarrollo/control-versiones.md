# Control de versiones

## Acerca de la tarea

### Nombre
Source Code Management (SCM)

### Tipo
Práctica DevOps

### Propósito 
Mantener varias versiones de los archivos, de modo que cuando se
modifica un archivo se puede seguir accediendo a las revisiones
anteriores. También son un mecanismo a través del cual colaboran las
personas que participan en la entrega de software.

### Beneficios 

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

## Elementos que se deben versionar

- Código fuente y dependencias
- Secuencias de comandos: esquemas de base de datos, comandos de configuración, etcétera
- Herramientas y artefactos de creación de entornos
- Archivos usados para crear y componer contenedores o máquinas virtuales
- Secuencia de comandos para el empaquetado de código, migraciones de base de datos y aprovisionamiento de entornos
- Configuraciones de servicios de orquestación
- Archivos y configuración de servicios de la nube
- Secuencia de comandos o configuración necesaria para crear infraestructura

## Tecnologías

Dentro de las tecnologías y herramientas que podemos encontrar se
encuentran las siguientes, existen más de ellas pero se considera que
estas son las que más presencia y más necesidades han cumplido en los
proyectos de la industria.

  Herramienta           Descripción                                                                                                                        Información
  --------------------- ---------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------
  GIT                   Open-source, Distributed version control system                                                                                    https://git-scm.com/
  SVN                   Open-source, Version control system                                                                                                https://subversion.apache.org/
  Mercurial             Open-source, Distributed version control system                                                                                    https://www.mercurial-scm.org/
  Azure DevOps Server   Licenciado, Conjunto de herramientas de desarrollo de software en colaboración hospedadas en el entorno local, Plataforma DevOps   https://azure.microsoft.com/es-mx/services/devops/server/
  ClearCase             Licenciado, Control y acceso a artefactos incluyendo código, requisitos, documentación etc.                                        https://www.ibm.com/products /rational-clearcase
  GitHub                Repositorio de gestión de proyectos alojado en línea basada en GIT                                                                 https://github.com/
  GitLab                Repositorio de gestión de proyectos alojado en línea basada en GIT, Plataforma DevOps                                              https://about.gitlab.com/
  Bitbucket             Repositorio de gestión de proyectos alojado en línea basada en GIT                                                                 https://bitbucket.org/

## Recomendaciones 

### GitHub

- Revisión de código
- Integración con otras herramientas
- GitHub Actions, permite automatizar flujos de integración
- Mayor popularidad
- Herramientas de construcción con servicios de terceros

### GitLab

- Revisión de código
- Herramienta de construcción
- Herramientas para más etapas del desarrollo
- Auto Hospedaje en cualquier plan

### Bitbucket

- Revisión de código
- Integración directa con Jira, Bamboo, Crucible y Jenkins
- Hosting autogestionada con estructura de precios escalonada

### Conclusiones

Github es una plataforma que ofrece muchas más facilidades, está bien
equipada para manejar proyectos personales o de pequeños equipos. GitLab
te permite disponer de un entorno abierto en el que puedes manejar tus
recursos, para equipos pequeños y empresas. Por otra parte, te ofrece
una serie de herramientas para las prácticas DevOps. Bitbucket es una
solución rentable para una empresa o negocios para alojar código privado
y propietario.

## Directrices de desarrollo

### Prácticas 

- Hacer confirmaciones (commits) de código frecuentemente
- No hacer confirmaciones (commits) de código roto
- Use mensajes significativos en tus confirmaciones (commits)

## Recomendaciones 

Para asegurar que se realicen mensajes significativos en las
confirmaciones puedes hacer uso de la especificación

## Integración y manejo de ramas

Existen un conjunto de patrones para la gestión de ramas de código
fuente [@PatternsSCB], algunos de ellos son:

- Ramas de funciones (FeatureBranch)
- Desarrollo basado en troncos (Base Trunk Development)
- Banderas de funciones (Features Flags)

### Recomendaciones 

Dentro de estos patrones se el que más se adapta a los principios y
prácticas DevOps como Integración Continua es .

