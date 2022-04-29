% Guía de despliegue de microservicios
% Victor Manuel Niño Martínez
% Abril 2022

# Guía para el despliegue de microservicios

El desarrollo de software moderno requiere métodos agiles para desplegar y 
escalar cada veza más demandados sistemas distribuidos. Los practicantes han 
adoptado la arquitectura de microservicios para afrontar los retos generados
por las demandas del software moderno. Sin embargo, la adopción de esta 
arquitectura también crea retos técnicos y organizacionales, realentizando 
potencialmente a los equipos de desarrollo y operaciones, que requieren más 
tiempo y esfuerzo para implementar un proceso de despliegue de calidad que les
permita liberar constantemente nuevas características a producción.
La adopción de una cultura DevOps, junto con sus prácticas y herramientas, 
mitigan algunos de estos nuevos retos. Este repositorio presenta la propuesta 
de una guía para el despliegue de sistemas con una arquitectura de 
microservicios, considerando las prácticas de una cultura DevOps, 
proporcionando a los practicantes un camino base para comenzar a implementar 
la plataforma necesaria para esta arquitectura. 

## Objetivo

Asistir a los Arquitectos de Software, Ingenieros de Software Ingenieros de 
Infraestructura, Ingenieros de Confiabilidad del Sitio (SRE), desarrolladores, 
equipos DevOps o a aquellos que tengan las responsabilidad de implementar la
infraestructura y mecanismos de despliegue del sistema. 


## Contenido

La guía presentada en este repositorio propone prácticas, principios y 
tecnologías encontradas a través de un Mapeo Sistemático de la Literatura 
(MSL) [^1] y una revisión de literatura gris, estas tuvieron como objetivo la 
identificación del proceso y practicas usadas en la industria para el 
despliegue de una arquitectura basada en microservicios considerando principios 
de una cultura DevOps.

## Casos de uso

+ La guía puede ser usada por aquellos que están en el proceso de migración de un 
sistema monolítico a una arquitectura de microservicios.
+ La guía puede ser usada por aquellos que ya implementaron esta arquitectura
pero quieren implementar nuevas prácticas relacionadas con DevOps o sus principios.
+ La guía puede ser usada para mejorar procesos existentes en la organización 
alineandose a los principios referenciados.

## Formato y estructura

La guía se encuentra estructurada tomando en cuenta un modelo de procesos para 
la implementación de microservicios, para el modelado se utilizó SPEM [^2]. En 
cada sección se presentan principios, tareas, artefactos, tecnologías, 
recomendaciones y recursos encontrados en la literatura.


[^1]: [Microservices Deployment: A Systematic Mapping Study](https://ieeexplore.ieee.org/document/9653415)
[^2]: [Software & Systems Process Engineering Meta-Model Specification](https://www.omg.org/spec/SPEM/2.0/PDF)
