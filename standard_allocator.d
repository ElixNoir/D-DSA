import core.stdc.stdlib : malloc, free, realloc;

import allocator;

class StandardAllocator : Allocator {
    
    final static void* allocate(ulong size) {
        return malloc(size);
    }
    
    final static void deallocate(void* address) {
        free(address);
    }

    final static void* reallocate(void* address, ulong size) {
        return realloc(address, size);
    }
    
}
