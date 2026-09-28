import core.stdc.stdlib : malloc, free;

import allocator;

class StandardAllocator : Allocator {
    
    final static void* allocate(ulong size) {
        return malloc(size);
    }
    
    final static void deallocate(void* address) {
        free(address);
    }
    
}
