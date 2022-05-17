# Administración de la construcción

## Acerca de la tarea
### Nombre:
Build Management

### Tipo:
Práctica DevOps

### Propósito: 
Proceso para preparar el ambiente de construcción para montar todos los
componentes de la aplicación software como un producto acabado y viable,
apto para su finalidad. El código fuente, el compilado, dependencias y
componentes son juntados para funcionar como una unidad cohesiva.

### Beneficios

- Asegura que el software se puede usar
- Asegura la reusabilidad y la confiabilidad del software en ambientes de clientes
- Incrementa la eficiencia y calidad del software

## Tecnologías

- Ant
- Buildr
- Maven
- Gradle
- Grunt
- MSBuild
- Visual Build
- Make (CMake / QMake)

## Automatización

### Script de construcción

Uno de los aspectos más importantes en la construcción es el Script,
este es el que permitirá automatizar el proceso de integración continua.

#### Un script de ejecutar las siguientes tareas:

- Compilar el código fuente
- Integrar la base de datos o persistencia
- Ejecución de las pruebas
- Realizar la inspección del código
- Empaquetar y desplegar el software
- Es importante mencionar que este script puede ejecutar más tareas para asegurar la calidad del software.

#### Para lograr este script es importante seguir las siguientes recomendaciones:

- Separa el script de construcción del tu IDE
- Centraliza todos tus artefactos
- Crea una consistente estructura de directorios
- Crea archivos de configuración para cada ambiente
- Crea tipos de construcción para cada ambiente como (local, integración, QA, producción)
