import allocator;
import standard_allocator;
import traits;

class DynamicIncrementalContainer(T, Index = ulong, Alloc = StandardAllocator) : DynamicContainer!(T, Index, Alloc) {
    
    protected ulong size;
    
    final ulong get_size() {
        return size;
    }
    
    final bool can_add() {
        return capacity > size;
    }
    
    final bool can_remove() {
        return size > 0;
    }
    
    final bool is_empty() {
        return size == 0;
    }
    
    final bool is_full() {
        return capacity == size;
    }
    
}
