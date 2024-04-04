Ingenieria en Ciencias y Sistemas  
Sistemas Operativos 1  
Catedratico: Jesús Alberto Guzmán Polanco  
**Nombre:** Nataly Saraí Guzmán Duarte  
**Carnet:** 202001570  

# Activiad 7
## Completely Fair Scheduler
El CFS es un componente fundamental del núcleo de Linux, responsable de gestionar el acceso a la CPU entre los distintos procesos que se ejecutan en el sistema. A diferencia de sus predecesores, este planificador se basa en un enfoque completamente justo que busca distribuir el tiempo de CPU de manera equitativa y eficiente.  
Mecanismos de fairness:  

- Tiempo virtual: El CFS asigna a cada proceso un tiempo virtual que aumenta a una tasa constante mientras el proceso no está en ejecución. El tiempo virtual se utiliza para determinar la "puntuación de justicia" de un proceso.  

- Control de ráfagas: El CFS puede limitar la cantidad de tiempo de CPU que un proceso puede consumir en un período corto de tiempo. Esto ayuda a prevenir que un solo proceso acapare la CPU y afecte a los demás.  

Interacciones con otros componentes del sistema:  

- Memoria: El CFS puede tener en cuenta la cantidad de memoria que utiliza un proceso al tomar decisiones de programación. Esto ayuda a garantizar que los procesos que consumen mucha memoria no monopolicen la CPU.  

- E/S: El CFS puede dar prioridad a los procesos que están esperando E/S para que puedan reanudar su ejecución lo antes posible.  

Opciones de configuración:  

- Prioridad: Los administradores del sistema pueden configurar la prioridad de cada proceso. Los procesos con mayor prioridad tendrán un mayor acceso a la CPU.  

- Cuantos de tiempo: La duración de un cuanto de tiempo se puede configurar. Un valor más corto de cuanto de tiempo puede mejorar la latencia del sistema, pero también puede aumentar la sobrecarga del planificador.  

- Sincronización: El CFS puede configurarse para tener en cuenta la sincronización entre procesos. Esto ayuda a evitar que los procesos que se sincronizan entre sí monopolicen la CPU.  

Limitaciones:  

- Complejidad: El CFS es un algoritmo complejo y puede ser difícil de entender y configurar.  

- Equidad a largo plazo: El CFS no garantiza la equidad a largo plazo. Es posible que algunos procesos reciban más tiempo de CPU que otros durante un período prolongado de tiempo.  

Ejemplos de uso:  

- Servidores web: El CFS se utiliza comúnmente en servidores web para garantizar que todos los usuarios tengan un acceso justo a la CPU.  

- Sistemas de escritorio: El CFS se utiliza en la mayoría de los escritorios Linux para proporcionar una experiencia de usuario receptiva.  

- Entornos de computación en la nube: El CFS se utiliza en muchos entornos de computación en la nube para optimizar el uso de la CPU.  







