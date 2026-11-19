//
// Created by os on 7/8/26.
//

#include "../h/scheduler.hpp"

List<TCB> Scheduler::readyCoroutineQueue;

TCB *Scheduler::get() {
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(TCB *tcb) {
    readyCoroutineQueue.addLast(tcb);
}




