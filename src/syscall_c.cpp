#include "../h/syscall_c.h"

#include "../h/print.hpp"
#include "../h/riscv.hpp"

void* mem_alloc (size_t size) {
    uint64 sizeInBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;

    register uint64 x0 asm("a0") = 0x01;
    register uint64 x1 asm("a1") = sizeInBlocks;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1)
        : "memory");

    return (void*)x0;
}

int mem_free (void* address) {
    register uint64 x0 asm("a0") = 0x02;
    register uint64 x1 asm("a1") = (uint64)address;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1)
        : "memory");

    return (int)x0;
}

int thread_create(
    thread_t* handle,
    void(*start_routine)(void*),
    void* arg
) {
    register uint64 x0 asm("a0") = 0x11;
    register uint64 x1 asm("a1") = (uint64)handle;
    register uint64 x2 asm("a2") = (uint64)start_routine;
    register uint64 x3 asm("a3") = (uint64)arg;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1), "r"(x2), "r"(x3)
        : "memory");

    return (int)x0;
}

int thread_exit () {
    register uint64 x0 asm("a0") = 0x12;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        :
        : "memory");

    return (int)x0;
}

void thread_dispatch () {
    register uint64 x0 asm("a0") = 0x13;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        :
        : "memory");
}

int sem_open (
    sem_t* handle,
    uint64 init
) {
    register uint64 x0 asm("a0") = 0x21;
    register uint64 x1 asm("a1") = (uint64)handle;
    register uint64 x2 asm("a2") = init;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1), "r"(x2)
        : "memory");

    return (int)x0;
}

int sem_close (sem_t handle) {
    register uint64 x0 asm("a0") = 0x22;
    register uint64 x1 asm("a1") = (uint64)handle;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1)
        : "memory");

    return (int)x0;
}

int sem_wait (sem_t id) {
    register uint64 x0 asm("a0") = 0x23;
    register uint64 x1 asm("a1") = (uint64)id;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1)
        : "memory");

    return (int)x0;
}

int sem_signal (sem_t id) {
    register uint64 x0 asm("a0") = 0x24;
    register uint64 x1 asm("a1") = (uint64)id;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1)
        : "memory");

    return (int)x0;
}

int sem_wait_n(sem_t id, unsigned n) {
    register uint64 x0 asm("a0") = 0x25;
    register uint64 x1 asm("a1") = (uint64)id;
    register uint64 x2 asm("a2") = n;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1), "r"(x2)
        : "memory");

    return (int)x0;
}

int sem_signal_n(sem_t id, unsigned n) {
    register uint64 x0 asm("a0") = 0x26;
    register uint64 x1 asm("a1") = (uint64)id;
    register uint64 x2 asm("a2") = n;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1), "r"(x2)
        : "memory");

    return (int)x0;
}

int time_sleep (time_t time) {
    return 0;
}

char getc () {
    register uint64 x0 asm("a0") = 0x41;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        :
        : "memory");

    return (char)x0;
}

void putc (char c) {
    register uint64 x0 asm("a0") = 0x42;
    register uint64 x1 asm("a1") = (uint64)c;

    __asm__ volatile ("ecall"
        : "+r"(x0)
        : "r"(x1)
        : "memory");
}