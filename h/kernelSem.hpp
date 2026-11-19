
#ifndef PROJECT_BASE_KERNELSEM_HPP
#define PROJECT_BASE_KERNELSEM_HPP
#include "list.hpp"
#include "../lib/hw.h"
#include "../h/tcb.hpp"


class KernelSem {

public:

    static KernelSem* sem_open(int value);

    void sem_close();

    void wait(uint64 val);

    void signal(uint64 val);

private:

    KernelSem(int value) : value(value) {}

    int value;

    List<TCB> blocked;




};



#endif //PROJECT_BASE_KERNELSEM_HPP
