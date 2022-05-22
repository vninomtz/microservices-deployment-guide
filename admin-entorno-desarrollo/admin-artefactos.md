# Repositorio de artefactos

## Acerca de la tarea

### Nombre:
Artifacts Repository Management

### Tipo:
Práctica DevOps

### Proposito
Los artefactos son archivos que se crean como resultado de un proceso de 
desarrollo de software, estos pueden ser paquetes, contenedores, archivos de 
configuración, documentos, entre otros. Estos artefactos son generados en la
tarea de [Administración de la construcción](./admin-entorno-desarrollo) después 
de la ejecución de los scripts de automatización.

El propósito de esta tarea es lidiar con los problemas de complejidad y confiabilidad 
mediante la centralización de los distintos artefactos generados en una sola ubicación.
Gracias a esto, se tiene mayor control sobre los artefactos y cómo se usan.

### Tipos de artefactos
En una arquitectura de microservicios pueden almacenarse distintos tipos de artefactos 
dependiendo del patron de despliegue usado. 
- Imagenes de contenedores
- Imagenes de máquinas virtuales con el código del servicio
- Binarios del del compilado empaquetado

### Beneficios

- Manejo del ciclo de vida de los artefactos
- Asegura que las construcciones son repetibles y reproducibles
- Acceso organizado a los artefactos
- Actúa como una sola fuente de información e integración de CI/CD para tus artefactos
- Permite compartir construcciones entre equipos o clientes
- Disponibilidad de los artefactos con control de acceso
- Proporciona características como la administración de versiones, el análisis de vulnerabilidades y los flujos de trabajo de aprobación.
- Habilita el control de acceso unificado y la configuración coherente.
- Admite muchas de las capacidades de DevOps para optimizar el rendimiento organizativo.

## Tipos repositorios de artefactos

- **Locales:** Un repositorio físico y administrado localmente en el que se implementan los artefactos.
- **Remotos:** Un proxy de almacenamiento en caché para un repositorio que se administra en una URL remota. Puede eliminar artefactos de un repositorio remoto, pero no puede implementar nuevos artefactos en él.
- **Virtuales:** Un repositorio agregado que combina repositorios locales y remotos bajo una URL común.

## Tecnologías

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

## Recomendaciones
Si quieres profundizar en el tema de versionado te recomendamos que revises el artículo Best Practices for Artifact Versioning in Service-Oriented Systems [@bestPracticesArtifactSOA] 
en el cual se presenta información extendida sobre el tema, sin embargo, te dejamos algunas recomendaciones básicas para comenzar. 

### Crear y publicar artefactos
- Cada artefacto debe estar referenciado a un solo repositorio
- Cada vez que se cree una nueva versión del artefacto automáticamente publiquela en su repositorio
- Implemente políticas para limpiar automáticamente versiones antiguas de sus artefactos
- Actualice el estado de su artefacto al estado correcto en el que se encuentra
- Si equipos u organizaciones externas estan consumiendo tus artefactos asegúrese que los estados son visibleas para todos ellos.

### Convenciones de nomenclatura de repositorios
Puedes usar la estructura de cuatro partes que recomienda que recomienda JFrog [^1] la cual esta conformada de la siguiente manera:

```sh
<equipo/claveProyecto>-<tecnología>-<madurez>-<localizador>
```
1. El nombre del proyecto, producto o equipo como el identificador principal del proyecto.
2. La tecnología, herramienta o tipo de paquete que se utiliza.
3. El nivel de madurez del artefacto, como las etapas de desarrollo, preparación o lanzamiento.
4. El localizador, la topología física de los artefactos.






[^1]: [Best Practices for Structuring and Naming Artifactory Repositories](https://jfrog.com/whitepaper/best-practices-structuring-naming-artifactory-repositories/) 
