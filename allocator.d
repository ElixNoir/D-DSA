interface Allocator {
    
    static final void* allocate(ulong size);
    static final void deallocate(void* address);
    static final void* reallocate(void* address, ulong size);
    
}
