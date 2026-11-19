#include "../h/memoryAllocator.hpp"
#include "../lib/hw.h"
#include "../h/print.hpp"
dataBlock* MemoryAllocator::free = nullptr;
dataBlock* MemoryAllocator::allocated = nullptr;

void *MemoryAllocator::mem_alloc(size_t size) {
    //int blockSize = ((size + MEM_BLOCK_SIZE - 1 + sizeof(dataBlock) + sizeof(footer)) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    uint64 blockSize = ((size * MEM_BLOCK_SIZE +  sizeof(dataBlock) + sizeof(footer) + MEM_BLOCK_SIZE -  1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    for (dataBlock* curr = MemoryAllocator::free; curr != nullptr; curr = curr->next) {

        if (curr->size < blockSize) continue;

        if (curr == MemoryAllocator::free) {
            if (curr->next)
                curr->next->prev = nullptr;
            MemoryAllocator::free = curr->next;
        } else {
            curr->prev->next = curr->next;
            if (curr->next)
                curr->next->prev = curr->prev;
        }

        size_t currSize = curr->size;

        dataBlock* newBlock = (dataBlock*) curr;
        newBlock->prev = nullptr;
        if (MemoryAllocator::allocated) {
            newBlock->next = MemoryAllocator::allocated;
            MemoryAllocator::allocated->prev = newBlock;
        } else {
            newBlock->next = nullptr;
        }
        newBlock->size = blockSize;
        footer* f = (footer*)((char*)newBlock + blockSize - sizeof(footer));
        f->size = blockSize;
        f->isFree = false;
        MemoryAllocator::allocated = newBlock;

        if (currSize > blockSize) {
            dataBlock* freeBlock = (dataBlock*) ((char*)newBlock + blockSize);
            freeBlock->prev = nullptr;

            freeBlock->next = MemoryAllocator::free;
            if (MemoryAllocator::free)
                MemoryAllocator::free->prev = freeBlock;
            MemoryAllocator::free = freeBlock;
            freeBlock->size = currSize - blockSize;
            footer* ft = (footer*)((char*)freeBlock + freeBlock->size - sizeof(footer));
            ft->size = freeBlock->size;
            ft->isFree = true;

        }

        return (void*)(((char*)newBlock + sizeof(dataBlock)));
    }
    return nullptr;
}


int MemoryAllocator::mem_free(void *address) {
    if (address == nullptr || (uint64)address < sizeof(dataBlock))
        return -2;

    dataBlock* curr = (dataBlock*)((char*)address - sizeof(dataBlock));
    footer* cf = (footer*)((char*)curr + curr->size - sizeof(footer));

    dataBlock* next = nullptr;
    footer* nf = nullptr;
    if ( (void*)((char*)curr + curr->size) <= (void*)((char*)HEAP_END_ADDR - MEM_BLOCK_SIZE)) {
        next = (dataBlock*)((char*)curr + curr->size);
        nf = (footer*)((char*)next + next->size - sizeof(footer));
    }

    dataBlock* prev = nullptr;
    footer* pf = nullptr;
    if ((void*)curr >= (void*)((char*)HEAP_START_ADDR + MEM_BLOCK_SIZE)) {
        pf = (footer*)((char*)curr - sizeof(footer));
        prev = (dataBlock*)((char*)curr - pf->size);
    }


    int x = 0;
    if ( nf != nullptr && nf->isFree ) x += 2;
    if ( pf != nullptr && pf->isFree ) x += 4;


    if (curr == MemoryAllocator::allocated) {
        if (curr->next)
            curr->next->prev = nullptr;
        MemoryAllocator::allocated = curr->next;
    } else {
        curr->prev->next = curr->next;
        if (curr->next)
            curr->next->prev = curr->prev;
    }


    switch (x) {
        case 0: // both blocks after and before current one are allocated
            cf->isFree = true;
            cf->size = curr->size;
            curr->prev = nullptr;
            curr->next = MemoryAllocator::free;
            if (curr->next)
                curr->next->prev = curr;
            MemoryAllocator::free = curr;
            break;
        case 2: // next block is free, previous block is allocated
            if (next == MemoryAllocator::free) {
                curr->next = next->next;
                if (next->next)
                    next->next->prev = curr;
                curr->prev = nullptr;
                MemoryAllocator::free = curr;
            } else {
                next->prev->next = curr;
                if (next->next)
                    next->next->prev = curr;
                curr->next = next->next;
                curr->prev = next->prev;
            }
            curr->size = curr->size + next->size;
            cf = (footer*)((char*)curr + curr->size - sizeof(footer));
            cf->size = curr->size;
            cf->isFree = true;
            break;
        case 4: // previous block is free, next block is allocated;
            prev->size = prev->size + curr->size;
            cf->size = prev->size;
            cf->isFree = true;
            break;
        case 6: // both blocks are free
            if (prev == MemoryAllocator::free) {
                if (prev->next)
                    prev->next->prev = nullptr;
                MemoryAllocator::free = prev->next;
            } else {
                prev->prev->next = prev->next;
                if (prev->next)
                    prev->next->prev=prev->prev;
            }

            if (next == MemoryAllocator::free) {
                prev->next = next->next;
                if (next->next)
                    next->next->prev = prev;
                MemoryAllocator::free = prev;
            } else {
                prev->prev = next->prev;
                next->prev->next = prev;
                if (next->next)
                    next->next->prev = prev;
                prev->next = next->next;
            }
            prev->size = prev->size + curr->size + next->size;
            nf->size = prev->size;
            nf->isFree = true;
            break;
        default:
            return -1;
    }
    return 0;
}


void MemoryAllocator::initFree() {
    dataBlock* start = (dataBlock*)HEAP_START_ADDR;
    footer* end = (footer*)((char*)HEAP_END_ADDR - sizeof(footer));
    start->next =  start->prev = nullptr;
    start->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR);
    end->size = start->size;
    end->isFree = true;
    MemoryAllocator::free = start;
    MemoryAllocator::allocated = nullptr;
}
