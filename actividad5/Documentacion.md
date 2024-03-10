Ingenieria en Ciencias y Sistemas  
Sistemas Operativos 1  
Catedratico: Jesús Alberto Guzmán Polanco  
**Nombre:** Nataly Saraí Guzmán Duarte  
**Carnet:** 202001570  

# Activiad 5 Documentacion

## ¿Cuantos procesos unicos son creados?
Se crean 3 procesos unicos:
- El proceso 1 es el proceso padre, el cual es el proceso que inicia la ejecución del programa y este es el responsable de crear el proceso hijo.
- El segundo proceso es el hijo, el cual es el proceso creado por el proceso padre y este es el responsable de crear  el hilo.
- Finalmente el proceso 3 es el proceso segundo, el cual es el proceso creado por el proceso padre, no tiene ninguna responsabilidad.


### ¿Cuantos hilos unicos son creados?
Se crea un hilo unico. El cual es creado por medio del proceso hijo, que se ejecuta con la funcion thread_function


### Explicacion 
El código crea tres procesos y un hilo. El primer proceso es el proceso padre, que crea los otros dos procesos. El segundo proceso es el primer proceso hijo, que crea un hilo y luego termina. El tercer proceso es el segundo proceso hijo, que no hace nada y termina.

El proceso padre crea el proceso hijo usando la funcion fork, si la creacion del primer proceso hijo es exitosa, imprime el PID del primer proceso hijo. Espera a que el proceso hijo termine usando la funcion wait y crea el segundo proceso hijo usando la funcion fork, si la creacion del segundo proceso hijo es exitosa imprime el PID del segundo proceso hijo. Luego espera a que el segundo proceso hijo termine usando la funcion wait, imprime un mensaje que indica que los procesos hijos han terminado.

EL primer proceso hijo imprime su propio PID, crea un hilo usando la funcion pthread_create, espera a que el hilo termine usando la funcion pthread_join, termina usando la funcion exit(0).

El segundo proceso hijo imprime su propio PID, y termina usando la funcion exit(0).

El hilo imprime el mensaje de hilo y termina.




