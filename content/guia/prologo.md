# Prólogo

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
