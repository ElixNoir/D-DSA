class StaticIncrementalContainer(T, ulong CAPACITY) : StaticContainer!(T, CAPACITY) {
    
    protected ulong size;
    
    final ulong get_size() {
        return size;
    }
    
    final bool can_add() {
        return CAPACITY > size;
    }
    
    final bool can_remove() {
        return size > 0;
    }
    
    final bool is_empty() {
        return size == 0;
    }
    
    final bool is_full() {
        return CAPACITY == size;
    }
    
}
