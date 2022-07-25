# Procesos para la adopción de microservicios

Para darle un orden darle un orden al conjunto de tareas y actividades, se decidió realizar un modelado del proceso sugerido para la implementación de una arquitectura de microservicios. Para el modelado se usó SPEM, un estándar para definir procesos de software. Como se menciona en la especificación oficial [^4], SPEM permite proveer una representación estandarizada y bibliotecas de contenido reutilizable, soporta desarrollo sistemático, administración y crecimiento de procesos de desarrollo, soporte de despliegue de contenido de métodos y procesos necesitados por configuraciones definidas, entre otros.

[^4]: [Software & systems process engineering meta-model specification](https://www.omg.org/spec/SPEM)

El alcance de SPEM está limitado deliberadamente a los elementos mínimos necesarios para definir cualquier proceso de desarrollo de software y sistemas, sin añadir características específicas para dominios o disciplinas de desarrollo particulares.

SPEM utiliza la notación UML _Unified Modeling Language_, provee componentes que permiten representar de manera estandarizada métodos, ciclos de vida, roles, actividades, tareas y productos de trabajo que se usan en la ingeniería de software. Se utilizó en este documento la versión de SPEM 2.0, la cual se utiliza para definir los procesos de desarrollo de software, sistemas y sus componentes.

## Notación

![Notación de SPEM](./guia/images/SPEM_notacion.png)

**Fase:** La fase representa un período significativo en un proyecto, que termina con un punto de control de gestión importante, un hito o un conjunto de
Entregables.

**Iteración:** La iteración agrupa un conjunto de Actividades anidadas que se repiten más de una vez. Representa un importante elemento estructurador para organizar el trabajo en ciclos repetitivos. El concepto de Iteración puede asociarse a diferentes reglas en diferentes métodos.

**Proceso:** Un proceso es una actividad especial que describe una estructura para determinados tipos de proyectos de desarrollo o partes de ellos.

**Actividad:** Definición de un trabajo, elemento de planeación, una acción.

**Tarea:** Una Definición de Tarea es un Elemento de Contenido de Método y una Definición de Trabajo que define el trabajo que realizan las instancias de Definición de Roles. Una Tarea está asociada a Productos de Trabajo de entrada y salida. Las entradas se diferencian en obligatorias y opcionales.

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
de _Diseño y planeación del despliegue_.

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

![Proceso para la implementación de una arquitectura de microservicios](./guia/images/proceso-adopcion-msa.png)

### Diseño de la arquitectura y planeación del despliegue

La fase de diseño de la arquitectura cuenta con un conjunto de iteraciones, una
iteración es un conjunto de tareas o actividades que se pueden realizar una o
muchas veces de forma incremental. Dentro de estas iteraciones se encuentran el
descubrimiento y separación de servicios,la descomposición y estrategias para
el manejo de los datos, la definiciónd el mecanismo de comunicación entre
microservicios y finalmente la iteración para el diseño y planeación del
despliegue del sistema. Es en esa última iteración en donde comenzará el
alcance de la presente guía.

![Fase de diseño de la arquitectura](./guia/images/fase-diseno-arquitectura.png)

Dentro de de esta iteración se encuentran un conjunto de tareas que
se describirán con mayor detalle en las secciones posteriores. Esta iteración
es importante ya que es aquí es donde se decidirá la estrategia para desplegar
los microservicios y esta decisión decidirá que tecnologías se usarán en las
siguientes fases. A continuación se muestran las tareas y salidas esperadas de
cada una de ellas

![Iteración diseño y estrategia de despliegue](./guia/images/iteracion-diseno-plan-despliegue.png)

### Preparación plataforma para microservicios

En esta fase se comienza la construcción de la infraestructura, procesos de
integración, despliegue de servicios y flujos de trabajo que soportarán la fase
de construcción. Toda esta fase será abordada en la guía, en la figura se
muestran las tres principales iteraciones. En la primera se crea el pipeline de
despliegue que permitirá integración y liberación constantemente de
funcionalidades. En la segunda, se muestra cómo se debe llevar el control de la
infraestructura del sistema y finalmente en la tercera se implementan aspectos
de la observabilidad.

![Fase de preparación del despliegue y construcción de los servicios](./guia/images/fase-prep-despliegue-construccion.png)

#### Configuración del pipeline de despliegue

En esta iteración se realizan tres actividades principales las cuales tienen a
su vez un conjunto de tareas. En la figura se muestran las actividades, además
se espera que cada actividad vaya soportando el desarrollo de la siguiente
actividad. En la primera figura 6, se prepara el entorno de desarrollo para la
construcción de los servicios, estandarizando los procesos y forma de trabajar
para cada uno de los distintos servicios a desarrollar.

![Iteración configuración del pipeline de despliegue](./guia/images/iteracion-prep-pipeline.png)

![Actividades preparación entorno de desarrollo](./guia/images/preparacion-entorno-desarrollo.png)

En la segunda actividad figura 7, se lleva a cabo el proceso para la
automatización del proceso de construcción del software, es en esta actividad
en donde se implementa la integración continua en conjunto con los principios DevOps.

![Actividades preparación entorno de construcción](./guia/images/preparacion-entorno-construccion.png)

En la última actividad figura 8 se implementa la práctica de entrega continua
para preparar la entrega de software en los diferentes ambientes.

![Actividades preparación entorno de entrega](./guia/images/preparacion-entorno-entrega.png)

#### Administración de la infraestructura

En esta iteración figura 9 se realiza el manejo de la configuración de la
infraestructura del sistema y se implementan prácticas como administración de
la infraestructura y GitOps.

![Iteración administración de la infraestructura](./guia/images/iteracion-admin-infra.png)

#### Implementación de observabilidad de los servicios

En la última iteración se implementa el sistema de monitoreo para la
obtención de métricas y trazabilidad. Además de el monitoreo se realiza la
implementación de un sistema para el manejo de los logs.

![Iteración observabilidad de servicios](./guia/images/iteracion-observabilidad.png)
