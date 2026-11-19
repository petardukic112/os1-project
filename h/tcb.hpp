#ifndef PROJECT_BASE_TCB_HPP
#define PROJECT_BASE_TCB_HPP
#include "scheduler.hpp"
#include "../lib/hw.h"


class TCB {
public:
    ~TCB() { delete []stack; };
    using Body = void (*)(void*);



    TCB(Body body, void* arg) : body(body),
                                arg(arg),
                                stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
                                context({body != nullptr ? (uint64)&threadWrapper : 0,
                                          stack != nullptr ? (uint64)(stack + STACK_SIZE) : 0
                                        }),
                                finished(false),
                                blocked(false)
    {
        if (body != nullptr) Scheduler::put(this);
    }



    static TCB* running;

    void setFinished(bool val) { finished = val; }

    bool isFinished() { return finished; }

    bool isBlocked() { return blocked; }

    void setBlocked(bool val) { blocked = val; }

    int getBlockedVal() { return blockedVal; }

    void setBlockedVal(uint64 val) { blockedVal = val; }

    static void dispatch();

    static void threadWrapper();

private:

    struct Context {
        uint64 ra;
        uint64 sp;
    };



    Body body;
    void* arg;
    uint64* stack;
    Context context;
    bool finished;
    bool blocked;
    uint64 blockedVal;

    static uint64 constexpr STACK_SIZE = 1024;

    static void contextSwitch(Context* oldContext, Context* newContext);


};














#endif //PROJECT_BASE_TCB_HPP
