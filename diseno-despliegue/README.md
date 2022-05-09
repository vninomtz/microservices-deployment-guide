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

+ ¿Cómo separar tu aplicación monolítica en pequeños servicios?
+ ¿Cómo manejar los datos de tu sistema?
+ ¿Cómo se comunicaran tus servicios entre ellos y con los clientes?
+ ¿Cómo lograr que tus servicios sean resistentes a fallas?
+ ¿Cómo reutilizar servcios y agilizar la construcción de los mismos?
+ ¿Cómo estandarizar el despliegue y liberar continuamente servicios listos 
para producción?

## Acerca de la sección

En esta sección nos enfocaremos solo el diseño del último punto de los mencionados 
anteriormente que consiste en la *estandarización de los artefactos de despliegue* y 
*liberación continua de servicios* listos para un ambiente de producción. Estos 
son los dos objetivos principales de la sección y de la guía.

Esta sección presenta los distintos patrones que se han encontrado en la literatura 
para resolver estos retos. Las subsecciones presentadas derivan de las tareas 
descritas en la sección de [procesos/diseno](../procesos/diseno.md).

## Índice del contenido

1. [Arquitectura de un sistema de microservicios](./arquitectura.md)
2. [Estrategia de despliegue](./estrategia)
3. [Tecnologías de infraestructura](./tecnologias-infraestructura.md)
4. [Configuración de servicios](./configuracion)
5. [Observabilidad de servicios](./observabilidad)
