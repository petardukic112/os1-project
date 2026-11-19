#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

struct dataBlock {
    dataBlock* next;
    dataBlock* prev;
    size_t size;
};

struct footer {
    size_t size;
    bool isFree;
};

class MemoryAllocator {
public:
    static dataBlock* free;
    static dataBlock* allocated;

    static void* mem_alloc(size_t size);

    static int mem_free(void* address);

    static void initFree();

};




#endif
