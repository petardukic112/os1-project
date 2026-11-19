#include "../h/tcb.hpp"

#include "../h/print.hpp"
#include "../h/scheduler.hpp"
#include "../h/syscall_c.h"
#include "../h/riscv.hpp"

TCB* TCB::running = nullptr;


void TCB::dispatch() {
    TCB* old = running;
    if (!old->isFinished() && !old->isBlocked()) Scheduler::put(old);
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    Riscv::thread_setup();
    running->body(running->arg);
    thread_exit();
}

