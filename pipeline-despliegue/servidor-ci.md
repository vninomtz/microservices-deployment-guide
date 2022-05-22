# Implementación sistema de Integración Continua CI

## Acerca de la tarea

### Nombre:
Implementación de Servidor de CI

### Tipo: 
Tarea

### Roles encargados:
- Encargado de despliegue

### Propósito: 

El Servidor de CI tiene como propósito ejecutar las tareas para la construcción, empaquetado, ejecución de pruebas, 
análisis de código y empaquetado del software cada vez que se realicen revisiones a la rama master.

## Tecnologías

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

### Jenkins 

De entre las anteriores Jenkins ha sido reportada con un mayor uso ya
que proporciona un mejor desempeño en la construcción y despliegue de
microservicios. Además cuenta con una serie de plugins lo que permite
una sencilla integración con otras tecnologías. Por otra parte, se
necesita una gran configuración inicial antes de comenzar a ser
productivos, además conforme se agregan más plugins el manejo de Jenkins
se vuelve más complicado.

### GitLab CI 

GitLab proporciona una gran variedad de tecnologías y herramientas para
llevar el control versiones, la construcción y el despliegue del mismo.
A diferencia de Jenkins GitLab no necesita demasiada configuración
inicial. Al mantener todo en un mismo ecosistema el manejo de las
tecnologías se vuelve más sencillo. Sin embargo, en proyectos en los que
se necesite un gran número de despliegues por día GitLab puede llegar a
no ser la mejor solución.

### Otros 

Las tecnologías como Travis CI, Circle CI y Go Ci han tenido un
rendimiento menor en comparación a Jenkins y se han usado mayormente en
pequeños proyectos en los que no se necesiten desplegar una gran
cantidad de microservicios con mucha frecuencia. Sin embargo, su
configuración resulta más sencilla. Las herramientas restantes tienen
sus ventajas pero no han tenido el mismo uso que las mencionadas
anteriormente.

## Recomendaciones 

- Si necesitas integrar y desplegar un gran número de servicios Jenkins es la mejor opción.
- Si ya estás usando GitLab como repositorio de versión de controles y aún no tienes una gran demanda en tus integraciones 
usar GitLab CI y su ecosistema te permitirá salvarte de lidiar con muchas tecnologías.
- Si usas cualquier otro repositorio de versión de controles y no tienes la necesidad de realizar una gran cantidad de 
despliegues puedes usar Travis CI, Circle CI o cualquiera de las otras opciones que cumpla con tus necesidades más específicas.
