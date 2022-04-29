# Procesos para la adopción de microservicios

## ¿Por qué modelar?

> Profundizar en la importancia de los procesos, mejora la calidad.
> El implementar una plataforma que soporta unar MSA involucra muchos recursos
> ecnonómicos y humanos, hay que coordinar todo ese esfuerzo de alguna forma.
> El modelado nos da un camino de como se debe comportar nuestro flujo de trabajo 
> a lo largo del desarrollo.

> El proposito del modelado es dividir las actividades y tareas que se llevan 
> a cabo al desplegar microservicios de tal manera que sea sencillo ubicar en que 
> parte del proceso se ejecutan dichas tareas o actividades.

## Definiciones

### *Fase*

### *Iteración*

### *Actividad*

### *Tarea* 

> Agregar diagrama UML para explicar como se componente las fase y jerarquias

## Proceso general

Para describir los procesos y actividades siguiendo un enfoque de modelado orientado 
a objetos con base en UML se ha utilizado SPEM. Como punto de partida se definieron 
tres fases principales, las cuales son iterativas y en las que es posible regresar 
si llegara a ser necesario.
La primera fase corresponde al diseño de la arquitectura, es aquí en dónde se toman las 
decisiones respecto a que servicios se crearán, cómo se comunicaran entre 
ellos, cómo se manejará la información y finalmente cómo se desplegaran los 
servicios. Es importante mencionar que no se llevó a cabo el modelado de las actividades 
de todas las iteraciones de la fase de diseño, para los objetivos de esta guía 
solo nos concentramos en la última iteracion la cual definimos como la iteración 
de *Diseño y planeación del despliegue*.

En la segunda fase, se prepara el entorno de desarrollo para cada 
servicio, se definen las actividades a realizar para la construcción,
integración y despliegue de cada servicio así como la estrategia para liberar 
las funcionalidades y observar el comportamiento de cada servicio en un entorno 
de producción. Es en esta fase en donde esta la mayor parte de las actividades 
presentadas en la guía, sin embargo, como sabes estas actividades no son sencillas y 
requieren mucho tiempo e iteraciones refinarlas, por lo tanto es posible comezar las 
actividades e ir mejorandolas y terminandolas conforme se avanza con las siguientes fases.

Finalmente, en la tercera fase se realiza la construcción de los 
servicios así como su integración siguiendo el diseño y procesos definidos en 
las fases anteriores. Esta fase a pesar de estar modelada, no se abarca en la guía y 
tampoco se desarrollaron los diagramas de las actividades que están involucradas 
en esta fase. Si quieres aprender a construir microservicios, te recomendamos que 
utilices alguna de las referencias utilizadas en esta guía, algunas de estas son 
lbros que involucran la construcción de microservicios.

> Agregar imagen diagrama SPEM

## Indice de la sección

1. [Diseño del despliegue](./diseno.md)
2. [preparacion-plataforma.md](./preparacion-plataforma.md)
