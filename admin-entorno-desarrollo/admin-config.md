# Administración de la configuración

## Acerca de la tarea
### Nombre
Configuration Management CM

### Tipo
Proceso DevOps

### Propósito 
Gestionar y controlar los elementos y las configuraciones del sistema a
lo largo del ciclo de vida. La gestión de la configuración (CM) también
gestiona la coherencia entre un producto y su definición de
configuración asociada. [@standarDevOps]

### Aspectos que involucra CM

- Sistemas de gestión de código fuente
-   Construcción
-   Empaquetado
-   Despliegues automatizados
-   Verificación de la línea de base

### Beneficios

- Facilita a las organizaciones el análisis del impacto debido al cambio de configuración
- Permite el aprovisionamiento automatizado en diferentes sistemas como dev, QA y prod
- Facilita la auditoría, la contabilidad y la verificación de los sistemas
- Reduce el trabajo redundante al garantizar la coherencia
- Gestiona eficazmente las actualizaciones simultáneas
- Evita los problemas relacionados con la configuración de una única versión de la verdad
- Simplifica la coordinación entre los miembros del equipo de desarrollo y operaciones
- Es útil para rastrear los defectos y resolverlos a tiempo
- Ayuda en el mantenimiento predictivo y preventivo

## Salidas 

Como resultado de una exitosa implementación de la configuración se
obtienen las siguientes salidas [@standarDevOps]

- La cadena de evidencias es verificable desde las líneas de base del 
código fuente a través de los objetos derivados persistentes hasta
las líneas de base verificables.
- El marco de gestión de la configuración permite confirmar que se han
desplegado los elementos de configuración previstos e identificar
cualquier cambio no autorizado (debido a un error involuntario o a
una intención maliciosa) en los entornos controlados.
- Los cambios gestionados son aceptados y aplicados por las partes
interesadas afectadas

## Lista de verificación 

Si ya cuentas con una buena estrategia de administración de la
configuración serás capas de responder afirmativamente a las siguientes
preguntas. Estas preguntas fueron obtenidas de [@humble2010continuous]

- ¿Puedo reproducir exactamente cualquiera de mis entornos, incluyendo
la versión del sistema operativo, su nivel de parches, la
configuración de la red, la pila de software, las aplicaciones
desplegadas en ella y su configuración?
- ¿Puedo realizar fácilmente un cambio incremental en cualquiera de
estos elementos individuales y desplegar el cambio en todos y cada
uno de mis entornos?
- ¿Puedo ver fácilmente cada uno de los cambios que se han producido
en un entorno concreto y rastrearlo para ver exactamente cuál ha
sido el cambio, quién lo ha realizado y cuándo lo ha hecho?
- ¿Puedo satisfacer todas las normas de cumplimiento a las que estoy sujeto?
- ¿Es fácil para cada miembro del equipo obtener la información que
necesita y realizar los cambios que necesitan? ¿O la estrategia se
interpone en la eficacia de la entrega, lo que supone un aumento de
la duración del ciclo y una reducción de la retroalimentación?

## Actividades 

De acuerdo con [@standarDevOps] las organizaciones deben de cumplir con
las siguientes tareas para cumplir con los procedimientos del proceso de
administración de la configuración. Las actividades mencionadas en el
estándar solo se mencionarán superficialmente, si se desea profundizar
en el tema se pueden consultar las fuentes referenciadas.

- Identificar las configuraciones y los elementos de configuración.
- Gestionar la configuración del software que se está integrando continuamente.
- Gestionar los cambios de configuración.
- Realizar auditorías de CM
