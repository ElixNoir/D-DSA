import allocator;
import standard_allocator;
import traits;

import dynamic_incremental_container;

class DynamicStack(T, Index = ulong, Alloc = StandardAlloc)
    : DynamicIncrementalContainer!(T, Index, Alloc)
{
    
    final bool can_peek() {
        return can_remove();
    }
    
    final T peek() {
        return data[size - 1];
    }
    
    final bool can_pop() {
        return can_remove();
    }
    
    final T pop() {
        return data[--size];
    }
    
    final bool can_push() {
        return can_add();
    }
    
    final void push(T value) {
        data[size++] = value;
    }
    
}
