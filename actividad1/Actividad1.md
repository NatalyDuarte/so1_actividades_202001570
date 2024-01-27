Ingenieria en Ciencias y Sistemas 
Sistemas Operativos 1 
Catedratico: Jesús Alberto Guzmán Polanco
**Nombre:** Nataly Saraí Guzmán Duarte
**Carnet:** 202001570

# Activiad 1 

## Tipos de kernel y sus diferencias 

### - Monolítico: 
Los kerneles monolíticos son los más antiguos y se han utilizado en la mayoría de los sistemas operativos  durante mucho tiempo. Están formados por un único módulo que contiene todas las funciones del sistema  operativo, desde la gestión de procesos y memoria hasta el acceso a dispositivos de hardware.  

La principal ventaja de los kerneles monolíticos es que son eficientes. Al estar todo integrado en un único   módulo, el kernel puede acceder directamente a los recursos del sistema sin necesidad de pasar por ninguna   capa intermedia. Esto puede mejorar el rendimiento del sistema en tareas que requieren un acceso rápido al hardware.

Sin embargo, los kerneles monolíticos también tienen algunas desventajas. Una de ellas es que pueden ser  difíciles de mantener y ampliar. Al estar todo integrado en un único módulo, cualquier cambio en el kernel  puede afectar a todas las funciones del sistema operativo. Esto puede dificultar la depuración de errores y   la adición de nuevas características.

### - Microkernel: 

Un microkernel es un tipo de núcleo de sistema operativo que proporciona un conjunto mínimo de servicios  básicos, como la gestión de procesos y memoria, y deja la implementación de otras funciones al software de  usuario.

Los microkerneles se caracterizan por su pequeño tamaño y su flexibilidad. Son pequeños porque solo   implementan las funciones básicas del sistema operativo. Esto los hace más eficientes que los kerneles   monolíticos, que implementan todas las funciones del sistema operativo en un solo módulo.

Los microkerneles también son flexibles porque permiten a los desarrolladores de aplicaciones implementar sus  propias funciones. Esto puede ser útil para aplicaciones que requieren funciones específicas que no están  disponibles en el núcleo.

### - Híbrido: 
Los kerneles híbridos son un tipo de núcleo de sistema operativo que combinan características de los kerneles  monolíticos y microkerneles. Por lo general, los kerneles híbridos incluyen un pequeño núcleo que proporciona  un conjunto mínimo de servicios básicos, como la gestión de procesos y memoria, y deja la implementación de  otras funciones a módulos que se ejecutan en el espacio de usuario.

Los kerneles híbridos intentan aprovechar las ventajas de ambos tipos de kerneles. Al igual que los kerneles  monolíticos, los kerneles híbridos pueden ser eficientes en tareas que requieren un acceso rápido al   hardware. Al igual que los microkerneles, los kerneles híbridos pueden ser flexibles y seguros.

### - Exokernel: 
Un exokernel es un tipo de núcleo de sistema operativo que proporciona un conjunto mínimo de servicios   básicos, como la gestión de procesos y memoria, y deja la implementación de otras funciones a servicios de  software que se ejecutan en el espacio de usuario.

Los exokerneles son similares a los microkerneles en que solo proporcionan un conjunto mínimo de servicios   básicos. Sin embargo, los exokerneles van un paso más allá al proporcionar estos servicios como interfaces de   programación de aplicaciones.

Esto permite a los desarrolladores de aplicaciones implementar sus propias funciones de sistema operativo, lo   que puede dar lugar a sistemas operativos más flexibles y seguros.

### - Kernel en Tiempo Real: 
Un kernel en tiempo real es un tipo de núcleo de sistema operativo diseñado para garantizar que las tareas  críticas se ejecuten dentro de un plazo determinado.

Los kerneles en tiempo real se utilizan en sistemas que requieren un procesamiento de datos en tiempo real,  como sistemas de control industrial, sistemas de seguridad y sistemas de comunicación.

Algunas características son :

    -Preemptividad: el kernel puede interrumpir una tarea en ejecución para dar prioridad a otra tarea que   tenga un plazo más estricto.
    -Planificación por prioridades: las tareas se planifican en función de su prioridad, con las tareas de  mayor prioridad que se ejecutan antes que las tareas de menor prioridad.
    -Sincronización de tareas: el kernel proporciona mecanismos para sincronizar las tareas entre sí, para   garantizar que las tareas no se ejecuten en conflicto entre sí.

## User vs Kernel Mode 
Son dos modos distintos en los que se pueden ejecutar programas en un sistema operativo. Estos modos están   diseñados para proporcionar diferentes niveles de privilegios y control sobre el hardware del sistema.

### - User Mode: 
El modo de usuario es el entorno en el que se ejecutan las aplicaciones que utilizamos a diario. Es un   entorno seguro y controlado, donde las aplicaciones tienen acceso limitado a los recursos del sistema.   
Esto evita que las aplicaciones se interfieran entre sí o con el sistema operativo.

Algunos privilegios son: acceso limitado a recursos del sistema y hardware, no puede ejecutar instrucciones   privilegiadas directamente del hadware-

Algunas funcion son: Ejecución de aplicaciones de usuario, acceso a servicios proporcionados por el kernel a   través de llamadas al sistema.

Finalmente en cuestion de seguridad tiene menor nivel de control para prevenir acciones que podrían afectar   negativamente al sistema.

### - Kernel Mode: 
El modo kernel es el entorno en el que se ejecuta el sistema operativo. En este entorno, el sistema operativo  tiene acceso completo a los recursos del sistema, lo que le permite realizar tareas críticas como la gestión  de la memoria, la comunicación con dispositivos y la programación de procesos.

Algunos privilegios son: Acceso completo a recursos del sistema y hardware, puede ejecutar todas las  instrucciones, incluyendo las privilegiadas.

Algunas funcion son: gestión directa del hardware y recursos del sistema, ejecución de tareas críticas del   sistema operativo.

Finalmente en cuestion de seguridad tiene mayor nivel de control, lo que permite al kernel tomar decisiones  críticas para la operación del sistema.


Esta división de modos tiene varios beneficios:
Estabilidad: Al restringir el acceso de las aplicaciones al modo usuario, se evita que puedan dañar el  sistema  operativo.
Seguridad: Al aislar las funciones críticas del sistema operativo en el modo kernel, se protegen de ataques  maliciosos.
Eficiencia: El acceso directo al hardware en el modo kernel permite al sistema operativo realizar tareas  críticas de forma más eficiente.

El sistema operativo cambia constantemente entre el modo de usuario y el modo kernel. Por ejemplo, cuando  iniciamos una aplicación, el sistema operativo cambia al modo kernel para cargar la aplicación en la memoria.   Una vez que la aplicación está cargada, el sistema operativo vuelve al modo de usuario para que la aplicación   pueda ejecutarse.

## Interruptions vs traps 
Son mecanismos utilizados en sistemas informáticos para gestionar eventos que requieren la atención del  sistema operativo o del kernel. Aunque ambos comparten similitudes, hay diferencias clave en su funcionamiento  y propósito.

### - Interruptions: 
Es un mecanismo que se produce de manera asíncrona y es generada por eventos externos al flujo normal de  ejecución del programa.Son eventos externos que suelen provenir de dispositivos de hardware, como la   pulsación de una tecla, la llegada de un paquete de red o la finalización de un dispositivo.  
Se pueden habilitar o deshabilitar a nivel del procesador para gestionar su ocurrencia.  
Pueden o no requerir cambio de contexto, dependiendo de la prioridad del evento que interrumpe y la tarea  actual que se está ejecutando.
Cuando ocurre una interrupción, el control del flujo de ejecución se transfiere al manejador de   interrupciones correspondiente (rutina de servicio de interrupciones) en el kernel del sistema operativo.

### - Traps: 
Es un mecanismo que se utiliza para interrumpir intencionalmente el flujo normal de ejecución del programa en  respuesta a un evento específico.Generalmente se originan en el propio programa mediante instrucciones de  trampa, como llamadas al sistema.
Son eventos internos que suelen provenir de errores o operaciones ilegales dentro del software.  
Por lo general, no se pueden deshabilitar, ya que son esenciales para manejar condiciones críticas del  software.
Siempre requieren cambio de contexto al modo kernel para manejar la excepción.  
Se utilizan para manejar situaciones excepcionales dentro del software, como errores o operaciones ilegales,   para evitar que los programas se bloqueen o las vulnerabilidades de seguridad.


Las diferencias entre interruptions y traps son:
Las interrupciones son generadas por eventos externos al programa en ejecución, mientras que las trampas son  generadas intencionalmente por el propio programa.  
Las interrupciones a menudo provienen de eventos de hardware, como temporizadores o dispositivos, mientras   que las trampas son iniciadas por el software mediante instrucciones específicas.  
Ambos tipos de eventos requieren la atención del kernel, pero las interrupciones generalmente involucran   eventos externos y asincrónicos, mientras que las trampas son iniciadas por el programa en sí.
