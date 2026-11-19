#include "../h/kernelSem.hpp"

#include "../h/print.hpp"
#include "../test/printing.hpp"


KernelSem *KernelSem::sem_open(int value) {
    return new KernelSem(value);
}


void KernelSem::sem_close() {
    TCB* curr = nullptr;
    while (blocked.peekFirst()) {
        curr = blocked.removeFirst();
        Scheduler::put(curr);
    }
}


void KernelSem::wait(uint64 val) {
    if (blocked.isEmpty() && value >= (long)val) {
        value -= val;
    } else {
        blocked.addLast(TCB::running);
        TCB::running->setBlockedVal(val);
        TCB::running->setBlocked(true);
        TCB::dispatch();
    }
}


void KernelSem::signal(uint64 val) {
    value += val;
    while (!blocked.isEmpty() && blocked.peekFirst()->getBlockedVal() <= value) {
        TCB* curr = blocked.removeFirst();
        value -= curr->getBlockedVal();
        curr->setBlocked(false);
        curr->setBlockedVal(0);
        Scheduler::put(curr);
    }
}






