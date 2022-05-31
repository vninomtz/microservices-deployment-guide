# Preparación plataforma para microservicios

En esta fase se comienza la construcción de la infraestructura, procesos de 
integración, despliegue de servicios y flujos de trabajo que soportarán la fase 
de construcción. Toda esta fase será abordada en la guía, en la figura se 
muestran las tres principales iteraciones. En la primera se crea el pipeline de 
despliegue que permitirá integración y liberación constantemente de 
funcionalidades. En la segunda, se muestra cómo se debe llevar el control de la 
infraestructura del sistema y finalmente en la tercera se implementan aspectos 
de la observabilidad.

![Fase de preparación del despliegue y construcción de los servicios](../imagenes/fase-prep-despliegue-construccion.png)

## Configuración del pipeline de despliegue

En esta iteración se realizan tres actividades principales las cuales tienen a 
su vez un conjunto de tareas. En la figura se muestran las actividades, además 
se espera que cada actividad vaya soportando el desarrollo de la siguiente 
actividad. En la primera figura 6, se prepara el entorno de desarrollo para la 
construcción de los servicios, estandarizando los procesos y forma de trabajar 
para cada uno de los distintos servicios a desarrollar.

![Iteración configuración del pipeline de despliegue](../imagenes/iteracion-prep-pipeline.png)

![Actividades preparación entorno de desarrollo](../imagenes/preparacion-entorno-desarrollo.png)

En la segunda actividad figura 7, se lleva a cabo el proceso para la 
automatización del proceso de construcción del software, es en esta actividad 
en donde se implementa la integración continua en conjunto con los principios DevOps.

![Actividades preparación entorno de construcción](../imagenes/preparacion-entorno-construccion.png)

En la última actividad figura 8 se implementa la práctica de entrega continua 
para preparar la entrega de software en los diferentes ambientes.

![Actividades preparación entorno de entrega](../imagenes/preparacion-entorno-entrega.png)

## Administración de la infraestructura

En esta iteración figura 9 se realiza el manejo de la configuración de la
infraestructura del sistema y se implementan prácticas como administración de 
la infraestructura y GitOps.

![Iteración administración de la infraestructura](../imagenes/iteracion-admin-infra.png)

## Implementación de observabilidad de los servicios

En la última iteración se implementa el sistema de monitoreo para la
obtención de métricas y trazabilidad. Además de el monitoreo se realiza la
implementación de un sistema para el manejo de los logs.

![Iteración observabilidad de servicios](../imagenes/iteracion-observabilidad.png)
