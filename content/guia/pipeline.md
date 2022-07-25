# Pipeline de despliegue

## Integración Continua

### Acerca de la tarea

#### Nombre:

Continuous Integration (CI)

#### Tipo:

Práctica DevOps

#### Roles encargados:

- Encargado del despliegue

#### Requisitos:

- Implementación de Control de Versiones
- Automatización proceso de construcción

#### Propósito: 

Hacer que los cambios de código se combinen con frecuencia en la rama
principal. Los procesos automatizados de construcción y prueba
garantizan que el código en la rama principal sea siempre de calidad de
producción.

### Objetivos de CI para Microservicios

- Cada equipo puede construir y desplegar los servicios que le pertenecen de forma independiente, sin afectar o 
interrumpir a otros equipos.
- Antes de desplegar una nueva versión de un servicio en producción, se despliega en los entornos de desarrollo, 
prueba y control de calidad para su validación. Las puertas de calidad se aplican en cada etapa.
- Una nueva versión de un servicio puede desplegarse junto a la versión anterior.
- Existen políticas de control de acceso suficientes.
- En el caso de las cargas de trabajo en contenedores, se puede confiar en las imágenes de contenedores que se despliegan en producción.


### Principios

#### No hagas suposiciones 

Cuando hacemos suposiciones en el desarrollo de software perdemos tiempo
e incrementamos los riesgos. Evita suponer que:

- Los métodos funcionan correctamente
- Los desarrolladores siguen estándares de código
- Los archivos de configuración no han sufrido cambios

Para reducir las suposiciones la integración continua reconstruye el
software siempre que se realice un cambio en el sistema de control de
versiones.

#### CI como la pieza central para el control de calidad 

Para asegurar la calidad del software se debe cuidar del proceso de
construcción, al crear flujos de construcción delgados y suficientemente
robustos se permite que los desarrolladores se concentren en el
desarrollo de nuevas funcionalidades.

#### Hacer realmente integración "continua" 

CI no es solo el proceso de juntar scripts y ejecutarlos todos juntos
todo el tiempo. CI es un proceso de mejora continua en el que se busca
agregar valor al producto final, para lograrlo los siguientes pasos
deben de aplicarse uno por uno a cada actividad que realices en tu
proyecto:

- Identificar: Identifica un proceso que requiera automatización
- Construir: Crea scripts de construcción que hagan la automatización repetible y consistente
- Compartir: Usando un sistema de control de versiones permitiendo que otros puedan usar los scripts/programas que creaste.
- Hacerlo continuamente: Asegúrate que el proceso automatizado se ejecuta con cada cambio aplicado usando un servidor de CI.

### Prácticas necesarias

Para que CI funcione correctamente en un proyecto los desarrolladores
deben cambiar día con día sus hábitos de desarrollo. Los desarrolladores
y equipos de desarrollo deben seguir las siguientes prácticas:

#### Hacer commit del código frecuentemente 

Haz pequeños cambios: Evita cambiar muchos componentes al mismo tiempo.
Escoge una pequeña tarea, escribe las pruebas y el código y después sube
tus cambios al repositorio de control de versiones. Commits después de
cada tarea: Realiza commits de tus cambios una vez completada cada
tarea. Hacer commits del código con frecuencia al repositorio de control
de versiones es la única forma efectiva de implementar CI, y esto
significa que todos los desarrolladores deben adoptar esta práctica de
desarrollo, tomando trozos más pequeños de código y dividiendo sus
tareas en elementos de trabajo más pequeños.

#### No hacer commit de código roto 

Para mitigar este riesgo es necesario tener un bien elaborado script de
construcción el cual compile y pruebe el código de forma repetible. Se
debe integrar como parte parte de las prácticas de los equipos de
desarrollo, siempre ejecutar un compilado privado antes de subir los
cambios al repositorio de control de versiones.

#### Corregir builds rotos inmediatamente 

Un broken build es cualquier cosa que impide que la construcción se
realice exitosamente. Cuando se opera en un ambiente de CI, este
problema debe ser corregido inmediatamente. La cultura del proyecto debe
de reflejar que arreglar una construcción rota es la prioridad más alta
del proyecto.

#### Escribir pruebas unitarias por desarrollador 

La construcción debe de estar completamente automatizada. Con la
finalidad de ejecutar pruebas para un sistema de CI estas deben de estar
automatizadas.

#### Todas las pruebas unitarias e inspecciones deben pasar 

El 100 por ciento de las pruebas automatizadas del proyecto deben pasar
para que la construcción pase. El hecho de aceptar código que no pase
las pruebas puede llevar a software de baja calidad. Usa un conjunto
general de estándares de codificación y diseño que todo el código del
proyecto debe pasar.

#### Ejecutar builds locales 

Para prevenir broken builds los desarrolladores deben emular un build de
integración en su entorno de desarrollo local después de haber
completado sus pruebas unitarias. Esto te permite integrar tus nuevas
funcionalidades con el software desarrollado por los otros
desarrolladores.

#### Evitar bajar código roto 

Si la construcción ha fallado, perderá tiempo si baja el código del
repositorio. Espere al cambio o ayude al desarrollador(es) a arreglar el
fallo de compilación y luego baje el último código.


## Implementación sistema de Integración Continua CI

### Acerca de la tarea

#### Nombre:

Implementación de Servidor de CI

#### Tipo: 

Tarea

#### Roles encargados:

- Encargado de despliegue

#### Propósito: 

El Servidor de CI tiene como propósito ejecutar las tareas para la construcción, empaquetado, ejecución de pruebas, 
análisis de código y empaquetado del software cada vez que se realicen revisiones a la rama master.

### Tecnologías

- Jenkins
- TeamCity
- Travis CI
- Go CD
- Azure DevOps
- CruiseControl
- Bamboo
- GitLab CI
- CircleCI
- Codeship

#### Jenkins 

De entre las anteriores Jenkins ha sido reportada con un mayor uso ya
que proporciona un mejor desempeño en la construcción y despliegue de
microservicios. Además cuenta con una serie de plugins lo que permite
una sencilla integración con otras tecnologías. Por otra parte, se
necesita una gran configuración inicial antes de comenzar a ser
productivos, además conforme se agregan más plugins el manejo de Jenkins
se vuelve más complicado.

#### GitLab CI 

GitLab proporciona una gran variedad de tecnologías y herramientas para
llevar el control versiones, la construcción y el despliegue del mismo.
A diferencia de Jenkins GitLab no necesita demasiada configuración
inicial. Al mantener todo en un mismo ecosistema el manejo de las
tecnologías se vuelve más sencillo. Sin embargo, en proyectos en los que
se necesite un gran número de despliegues por día GitLab puede llegar a
no ser la mejor solución.

#### Otros 

Las tecnologías como Travis CI, Circle CI y Go Ci han tenido un
rendimiento menor en comparación a Jenkins y se han usado mayormente en
pequeños proyectos en los que no se necesiten desplegar una gran
cantidad de microservicios con mucha frecuencia. Sin embargo, su
configuración resulta más sencilla. Las herramientas restantes tienen
sus ventajas pero no han tenido el mismo uso que las mencionadas
anteriormente.

### Recomendaciones 

- Si necesitas integrar y desplegar un gran número de servicios Jenkins es la mejor opción.
- Si ya estás usando GitLab como repositorio de versión de controles y aún no tienes una gran demanda en tus integraciones 
usar GitLab CI y su ecosistema te permitirá salvarte de lidiar con muchas tecnologías.
- Si usas cualquier otro repositorio de versión de controles y no tienes la necesidad de realizar una gran cantidad de 
despliegues puedes usar Travis CI, Circle CI o cualquiera de las otras opciones que cumpla con tus necesidades más específicas.


## Automatización de liberaciones

### Acerca de la tarea

#### Tipo:

Práctica DevOps

#### Propósito 

La automatización de implementaciones es lo que te permite implementar
el software en entornos de prueba y producción con solo presionar un
botón. La automatización es esencial para reducir el riesgo de
implementaciones de producción. También es esencial para proporcionar
comentarios rápidos sobre la calidad del software, ya que permite que
los equipos realicen pruebas integrales lo antes posible después de los
cambios.

### Entradas

- Paquetes creados mediante el proceso de integración continua (CI). Estos paquetes deben poder implementarse en cualquier entorno, 
incluido el de producción.
- Secuencias de comandos para configurar el entorno, implementar los paquetes y realizar una prueba de implementación (también conocida
como prueba de humo).
- Información de configuración específica del entorno.

### Tareas

1. Se prepara el entorno de destino, tal vez mediante la instalación y configuración de cualquier software necesario, o mediante el inicio 
de un host virtual desde una imagen ya preparada en un proveedor de servicios en la nube.
2. Se implementan los paquetes.
3. Se realiza cualquier tarea relacionada con la implementación, como la ejecución de secuencias de comandos de migración de bases de datos.
4. Se realiza cualquier configuración necesaria.
5. Se realiza una prueba de implementación para asegurarse de que todos los servicios externos necesarios sean accesibles y que el sistema funcione.

### Prácticas

- Usa el mismo proceso de implementación para todos los entornos, incluido el de producción.
- Permite que cualquier persona con las credenciales necesarias implemente cualquier versión del artefacto en cualquier entorno a pedido de forma completamente automatizada.
- Usa los mismos paquetes para cada entorno.
- Permite recrear el estado de cualquier entorno a partir de la información almacenada en el control de versión.

### Recomendaciones

Documentar el proceso de implementación existente en una herramienta común a la que tengan acceso los desarrolladores y equipos de operaciones.
Trabaja para simplificar y automatizar el proceso de implementación de forma incremental.

- Empaquetado del código de manera adecuada para la implementación.
- Creación de contenedores o imágenes de máquinas virtuales preconfiguradas
- Automatización de la implementación y la configuración de middleware
- Copia de paquetes o archivos en el entorno de producción
- Reinicio de servidores, aplicaciones o servicios
- Generación de archivos de configuración a partir de plantillas
- Ejecución de pruebas de implementación automatizadas para garantizar que el sistema funcione y esté configurado de forma correcta
- Ejecución de procedimientos de prueba
- Secuencia de comandos y automatización de las migraciones de bases de datos


## Entrega continua

### Acerca de la tarea

#### Nombre:

Continuous Delivery CD

#### Tipo

Práctica DevOps

#### Propósito

Automatización completa del proceso de entrega La entrega debe ser tan
sencilla como seleccionar la versión de la aplicación y presionar un
botón. Regresar a una versión debe ser igual de sencillo.

El proceso para manejar tu ambiente de producción debe ser usado para
manejar los ambientes de pruebas. Todos los aspectos del ambiente deben
ser manejados de la misma manera, por ejemplo bases de datos, web
servers message brokers y servidores de aplicaciones.

Es necesario tener un un plan creado y mantenido por todos los
involucrados en la liberación del software incluyendo desarrolladores,
testers, equipo de operaciones e infraestructura. Reducir los errores
humanos automatizando tanto como sea posible, comenzando con las fases
más propensas a errores. Realiza a menudo ensayos del proceso en
ambientes parecidos a producción para tener la capacidad de volver atrás la
liberación si las cosas no van de acuerdo al plan Tener una estrategia
de migración de la configuración e información de producción como parte
del proceso de actualización y retroceso.

### Prácticas necesarias

- Automatización de pruebas
- Automatización de la implementación
- Pruebas continuas
- Integración Continua
- Administración de la configuración

### Lista verificación para saber si prácticas CD

- ¿Se encuentra nuestro software en un estado que permita la implementación durante su ciclo de vida?
- ¿Priorizamos que el software se pueda implementar por sobre trabajar en funciones nuevas?
- ¿Están los comentarios rápidos sobre la calidad y la capacidad de implementación del sistema en el que trabajamos disponibles para todos los miembros del equipo?
- Cuando recibimos comentarios que indican que el sistema no se puede implementar (por ejemplo, las compilaciones de errores o las
pruebas), ¿convertimos la corrección de estos problemas en nuestra prioridad más alta?
- ¿Podemos implementar nuestro sistema en producción o en los usuarios finales en cualquier momento a pedido?

### Lista de verificación para saber si la liberación está lista para producción

- El código se puede compilar.
- El código hace lo que nuestros desarrolladores creen que debe hacer porque ha pasado sus pruebas unitarias.
- El sistema hace lo que nuestros analistas o usuarios creen que debe hacer porque ha pasado todas las pruebas de aceptación.
- La configuración de la infraestructura y los entornos de referencia se gestiona adecuadamente, porque la aplicación se ha probado en un análogo de producción.
- El código tiene todos los componentes adecuados porque se ha podido desplegar.
- El sistema de despliegue funciona porque, como mínimo, se habrá utilizado en esta versión candidata al menos una vez en un entorno de desarrollo, una vez en la 
etapa de pruebas de aceptación y una vez en un entorno de pruebas antes de que la candidata pudiera haber sido promovida a esta etapa.
- El sistema de control de versiones tiene todo lo que necesitamos para desplegar, sin necesidad de intervención manual, porque ya hemos desplegado el sistema varias veces.

### Ejemplo pipeline

![Ejemplo pipeline](./guia/images/ejemplo-pipeline.png)

