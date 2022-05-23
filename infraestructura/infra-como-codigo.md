# Infraestructura como código

#### Nombre:

Infraestructure as Code (IaC)

#### Tipo:

Práctica DevOps

#### Descripción

Definición, gestión y suministro de componentes de infraestructura
redes, máquinas virtuales, balanceadores de carga y topología de
conexión) mediante software. Al igual que el principio de que el mismo
código fuente genera el mismo binario, un modelo IaC genera el mismo
entorno cada vez que se aplica. IaC es una práctica clave de DevOps y se
utiliza junto con la entrega continua.

#### Beneficios

-   Permite a los equipos de DevOps probar aplicaciones en entornos
    parecidos producción al principio del ciclo de desarrollo.

-   Permite aprovisionar múltiples entornos de prueba de manera
    confiable y bajo demanda

-   Permite la validación y prueba de la configuración para evitar
    problemas de implementación comunes.

-   Los equipos que implementan IaC pueden ofrecer entornos estables
    rápidamente y a escala.

-   Los equipos evitan la configuración manual de entornos y refuerzan
    la coherencia al representar el estado deseado de sus entornos
    mediante código.

-   Las implementaciones de infraestructura con IaC son repetibles y
    evitan problemas de tiempo de ejecución causados por cambios en la
    configuración o dependencias faltantes.

-   Los equipos de DevOps pueden trabajar juntos con un conjunto
    unificado de prácticas y herramientas para entregar aplicaciones y
    su infraestructura de soporte de manera rápida, confiable y a
    escala.

#### Buenas prácticas [@Kumara2021]

##### Escriba programas de IaC para personas, no para computadoras

-   Haga que los nombres sean consistentes, distintivos y significativos

-   Haga que el estilo y el formato del código sean coherentes

-   Hacer explícitos los parámetros, sus tipos y valores predeterminados

-   Usa los condicionales correctamente

##### No te repitas a ti mismo

-   Modularizar programas de IaC

-   Reutilice el código en lugar de reescribirlo

-   Seleccione los módulos adecuados para el trabajo y utilícelos
    correctamente

-   Reutilizar las herramientas que usa la comunidad

##### Deje que las herramientas de IaC hagan el trabajo

-   Codifica todo

-   Empaquetar aplicaciones para implementación

-   No viole la inmutabilidad y reproducibilidad de su infraestructura.

-   No viole la idempotencia de los programas iac

##### Realizar cambios incrementales

-   Utilice un sistema de control de versiones

-   Favorecer las funcionalidades versionables

##### Evita errores evitables

-   Utilice el estilo de cotización correcto

-   Evite comportamientos inesperados siempre que sea posible

-   Utilice los valores adecuados

##### Planifique los errores inevitables

-   Escribe pruebas a medida que codificas

-   No ignores los errores

-   Utilice bibliotecas de prueba listas para usar

-   Supervisa su entorno

#### Tecnologías

-   Terraform

-   Ansible

-   Chef

-   Pulumi

-   Puppet

-   Red Hat Ansible Automation Platfom

-   AWS CloudFormation

-   Saltstack
