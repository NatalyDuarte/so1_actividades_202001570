#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <sys/wait.h>


void *thread_function(void *arg) {
  printf("Hilo!\n");
  return NULL;
}

pid_t wait(int *status) {
  return ::wait(status); 
}


int main() {

  pid_t pid;

  pid = fork();
  if (pid == 0) {
    printf("Proceso hijo (PID: %d)\n", getpid());
    
    pthread_t thread;
    pthread_create(&thread, NULL, thread_function, NULL);
    pthread_join(thread, NULL);
    
    exit(0);
  } else if (pid > 0) {
    printf("Proceso padre (PID: %d)\n", getpid());
    
    pid = fork();
    if (pid == 0) {
      printf("Segundo proceso hijo (PID: %d)\n", getpid());
      exit(0);
    } else if (pid > 0) {
      printf("Esperando a que los procesos hijos terminen\n");
      wait(NULL);
      wait(NULL);
      printf("Procesos hijos terminados\n");
    } else {
      perror("Error al crear el segundo proceso hijo");
      exit(1);
    }
  } else {
    perror("Error al crear el primer proceso hijo");
    exit(1);
  }

  return 0;
}
