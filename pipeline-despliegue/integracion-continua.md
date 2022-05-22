# Integración Continua

## Acerca de la tarea

### Nombre:
Continuous Integration (CI)

### Tipo:
Práctica DevOps

### Roles encargados:
- Encargado del despliegue

### Requisitos:
- Implementación de Control de Versiones
- Automatización proceso de construcción

### Propósito: 

Hacer que los cambios de código se combinen con frecuencia en la rama
principal. Los procesos automatizados de construcción y prueba
garantizan que el código en la rama principal sea siempre de calidad de
producción.

## Objetivos de CI para Microservicios

- Cada equipo puede construir y desplegar los servicios que le pertenecen de forma independiente, sin afectar o 
interrumpir a otros equipos.
- Antes de desplegar una nueva versión de un servicio en producción, se despliega en los entornos de desarrollo, 
prueba y control de calidad para su validación. Las puertas de calidad se aplican en cada etapa.
- Una nueva versión de un servicio puede desplegarse junto a la versión anterior.
- Existen políticas de control de acceso suficientes.
- En el caso de las cargas de trabajo en contenedores, se puede confiar en las imágenes de contenedores que se despliegan en producción.


## Principios

### No hagas suposiciones 

Cuando hacemos suposiciones en el desarrollo de software perdemos tiempo
e incrementamos los riesgos. Evita suponer que:

- Los métodos funcionan correctamente
- Los desarrolladores siguen estándares de código
- Los archivos de configuración no han sufrido cambios

Para reducir las suposiciones la integración continua reconstruye el
software siempre que se realice un cambio en el sistema de control de
versiones.

### CI como la pieza central para el control de calidad 

Para asegurar la calidad del software se debe cuidar del proceso de
construcción, al crear flujos de construcción delgados y suficientemente
robustos se permite que los desarrolladores se concentren en el
desarrollo de nuevas funcionalidades.

### Hacer realmente integración "continua" 

CI no es solo el proceso de juntar scripts y ejecutarlos todos juntos
todo el tiempo. CI es un proceso de mejora continua en el que se busca
agregar valor al producto final, para lograrlo los siguientes pasos
deben de aplicarse uno por uno a cada actividad que realices en tu
proyecto:

- Identificar: Identifica un proceso que requiera automatización
- Construir: Crea scripts de construcción que hagan la automatización repetible y consistente
- Compartir: Usando un sistema de control de versiones permitiendo que otros puedan usar los scripts/programas que creaste.
- Hacerlo continuamente: Asegúrate que el proceso automatizado se ejecuta con cada cambio aplicado usando un servidor de CI.

## Prácticas necesarias

Para que CI funcione correctamente en un proyecto los desarrolladores
deben cambiar día con día sus hábitos de desarrollo. Los desarrolladores
y equipos de desarrollo deben seguir las siguientes prácticas:

### Hacer commit del código frecuentemente 

Haz pequeños cambios: Evita cambiar muchos componentes al mismo tiempo.
Escoge una pequeña tarea, escribe las pruebas y el código y después sube
tus cambios al repositorio de control de versiones. Commits después de
cada tarea: Realiza commits de tus cambios una vez completada cada
tarea. Hacer commits del código con frecuencia al repositorio de control
de versiones es la única forma efectiva de implementar CI, y esto
significa que todos los desarrolladores deben adoptar esta práctica de
desarrollo, tomando trozos más pequeños de código y dividiendo sus
tareas en elementos de trabajo más pequeños.

### No hacer commit de código roto 

Para mitigar este riesgo es necesario tener un bien elaborado script de
construcción el cual compile y pruebe el código de forma repetible. Se
debe integrar como parte parte de las prácticas de los equipos de
desarrollo, siempre ejecutar un compilado privado antes de subir los
cambios al repositorio de control de versiones.

### Corregir builds rotos inmediatamente 

Un broken build es cualquier cosa que impide que la construcción se
realice exitosamente. Cuando se opera en un ambiente de CI, este
problema debe ser corregido inmediatamente. La cultura del proyecto debe
de reflejar que arreglar una construcción rota es la prioridad más alta
del proyecto.

### Escribir pruebas unitarias por desarrollador 

La construcción debe de estar completamente automatizada. Con la
finalidad de ejecutar pruebas para un sistema de CI estas deben de estar
automatizadas.

### Todas las pruebas unitarias e inspecciones deben pasar 

El 100 por ciento de las pruebas automatizadas del proyecto deben pasar
para que la construcción pase. El hecho de aceptar código que no pase
las pruebas puede llevar a software de baja calidad. Usa un conjunto
general de estándares de codificación y diseño que todo el código del
proyecto debe pasar.

### Ejecutar builds locales 

Para prevenir broken builds los desarrolladores deben emular un build de
integración en su entorno de desarrollo local después de haber
completado sus pruebas unitarias. Esto te permite integrar tus nuevas
funcionalidades con el software desarrollado por los otros
desarrolladores.

### Evitar bajar código roto 

Si la construcción ha fallado, perderá tiempo si baja el código del
repositorio. Espere al cambio o ayude al desarrollador(es) a arreglar el
fallo de compilación y luego baje el último código.
