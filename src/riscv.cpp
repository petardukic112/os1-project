#include "../h/riscv.hpp"

#include "../h/memoryAllocator.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.h"
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/kernelSem.hpp"


void Riscv::thread_setup() {
   mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap() {
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008ULL || scause == 0x0000000000000009ULL) {

        volatile uint64 sepc = r_sepc() + 4;
        volatile uint64 sstatus = r_sstatus();

        uint64 op;

        __asm__ volatile ("ld %[x], 10 * 8(fp)" : [x] "=r"(op));
        /*printStringA("scause:");
        printIntegerA(scause);
        printStringA("   ");

        printStringA("sepc:");
        printIntegerA(sepc);
        printStringA("   ");
        printStringA("sstatus:");
        printIntegerA(sstatus);
        printStringA("   ");

        printStringA("\n");*/

        switch (op) {
            case 0x01: // mem_alloc
            {
                volatile uint64 sizeInBlocks;
                __asm__ volatile ("ld %[x], 11 * 8(fp)" : [x] "=r"(sizeInBlocks));

                uint64 address = (uint64)MemoryAllocator::mem_alloc(sizeInBlocks);
                __asm__ volatile ("sd %[x], 10 * 8(fp)" : : [x]"r"(address));

                break;
            }
            case 0x02: // mem_free
            {
                void* address;
                __asm__ volatile ("ld %[x], 11 * 8(fp)" : [x] "=r"(address));

                uint64 result = MemoryAllocator::mem_free(address);
                __asm__ volatile ("sd %[x], 10 * 8(fp)" : : [x]"r"(result));

                break;
            }
            case 0x11: // thread_create
            {
                uint64 handle, start_routine, arg;
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (handle));
                __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r" (start_routine));
                __asm__ volatile ("ld %0, 13 * 8(fp)" : "=r" (arg));
                TCB* tcb = new TCB((void(*)(void*))start_routine, (void*)arg);
                *((TCB**)handle) = tcb;
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
                break;
            }
            case 0x12: // thread_exit
            {
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
                TCB::running->setFinished(true);
                TCB::dispatch();
                break;
            }
            case 0x13: // thread_dispatch
            {
                //printStringA("tdsp\n");
                TCB::dispatch();
                break;
            }
            case 0x21: // sem_open
            {
                uint64 handle, init;
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (handle));
                __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r" (init));
                KernelSem* sem = KernelSem::sem_open(init);
                *((KernelSem**)handle) = sem;
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
                break;
            }
            case 0x22: // sem_close
            {
                KernelSem* handle;
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (handle));
                handle->sem_close();
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
                break;
            }
            case 0x23: // sem_wait
            {
                KernelSem* handle;
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (handle));
                handle->wait(1);
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
                break;
            }
            case 0x24: // sem_signal
            {
                KernelSem* handle;
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (handle));
                handle->signal(1);
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
                break;
            }
            case 0x25: // sem_wait_n
            {
                KernelSem* handle;
                uint64 val;
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (handle));
                __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r" (val));
                handle->wait(val);
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
                break;
            }
            case 0x26: // sem_signal_n
            {
                KernelSem* handle;
                uint64 val;
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (handle));
                __asm__ volatile ("ld %0, 12 * 8(fp)" : "=r" (val));
                handle->signal(val);
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (0x0));
                break;
            }
            case 0x41: // getc
            {
                char c = __getc();
                __asm__ volatile ("sd %0, 10 * 8(fp)" : : "r" (c));
                break;
            }
            case 0x42: // putc
            {
                char c;
                __asm__ volatile ("ld %0, 11 * 8(fp)" : "=r" (c));
                __putc(c);
                break;
            }

        }

        w_sstatus(sstatus);
        w_sepc(sepc);

    } else if (scause == 0x8000000000000009ULL) {
        console_handler();
    } else if (scause == 0x8000000000000001ULL) {
        mc_sip(SIP_SSIP);
    } else {
        printStringA("error:");
        __putc(scause + '0');
        printStringA("\n");
        *(int*)0x100000 = 0x5555;
    }

}
