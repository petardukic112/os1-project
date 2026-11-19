
#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP
#include "../lib//hw.h"
#include "../h/tcb.hpp"
#include "../h/kernelSem.hpp"

typedef TCB* thread_t;

typedef KernelSem* sem_t;

typedef unsigned long time_t;

const int EOF = -1;



void* mem_alloc (size_t size);

int mem_free (void* address);



int thread_create (
 thread_t* handle,
 void(*start_routine)(void*),
 void* arg
);

int thread_exit ();

void thread_dispatch ();



int sem_open (
 sem_t* handle,
 uint64 init
);

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal (sem_t id);

int sem_wait_n(sem_t id,
uint64 n);

int sem_signal_n(sem_t id,
uint64 n);



int time_sleep (time_t);



char getc ();

void putc (char);

#endif //PROJECT_BASE_SYSCALL_C_HPP
