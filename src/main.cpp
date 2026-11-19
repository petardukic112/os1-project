#include "../h/kernelSem.hpp"
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../h/syscall_c.h"
#include "../h/list.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/print.hpp"
#include "../h/scheduler.hpp"
#include "../h/syscall_cpp.hpp"

extern void userMain();

int main() {

    MemoryAllocator::initFree();
    Riscv::ms_sstatus(Riscv::SSTATUS_SPP | Riscv::SSTATUS_SIE);
    Riscv::w_stvec( (uint64)&Riscv::SupervisorTrap );

    TCB::running = new TCB(nullptr, nullptr);

    userMain();
    //Threads_C_API_testA();

    *(int*)0x100000 = 0x5555;

    return 0;


    /*MemoryAllocator::initFree();
    char* A1 = (char*)MemoryAllocator::mem_alloc(10);
    char* A2 = (char*)MemoryAllocator::mem_alloc(10);
    char* A3 = (char*)MemoryAllocator::mem_alloc(10);
    char* A4 = (char*)MemoryAllocator::mem_alloc(10);
    char* A5 = (char*)MemoryAllocator::mem_alloc(10);
    char* A6 = (char*)MemoryAllocator::mem_alloc(10);

    for (dataBlock* curr = MemoryAllocator::allocated; curr ; curr=curr->next){
        printStringA("My adress:");
        printIntegerA((uint64)curr);
        printStringA("\nMy size:");
        printIntegerA(curr->size);
        printStringA("\n");
    }

    MemoryAllocator::mem_free(A3);
    MemoryAllocator::mem_free(A2);
    MemoryAllocator::mem_free(A5);
    MemoryAllocator::mem_alloc(20);
    printStringA("\n\n\n");

    for (dataBlock* curr = MemoryAllocator::free; curr ; curr=curr->next) {
        printStringA("My adress:");
        printIntegerA((uint64)curr);
        printStringA("\nMy size:");
        printIntegerA(curr->size);
        printStringA("\n");
    }
    printStringA("\n\n\n");

    for (dataBlock* curr = MemoryAllocator::allocated; curr ; curr=curr->next){
        printStringA("My adress:");
        printIntegerA((uint64)curr);
        printStringA("\nMy size:");
        printIntegerA(curr->size);
        printStringA("\n");
    }

    for (dataBlock* curr = MemoryAllocator::free; curr ; curr=curr->next) {
        printStringA("My adress:");
        printIntegerA((uint64)curr);
        printStringA("\nMy size:");
        printIntegerA(curr->size);
        printStringA("\n");
    }

    int x = (long)A1 + (long)A4 + (long)A6;
    x++;
    printIntegerA(x);

    int* ptr = (int*)0x100000;
    *ptr = 0x5555;


    return 0;*/
}
