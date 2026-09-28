import allocator;
import standard_allocator;
import traits;

class DynamicContainer(T, Index = ulong, Alloc = StandardAllocator) 
    if (isUnsignedIntegral!(Index)
        && isAllocator!(Alloc))
{
    
    protected T* data;
    protected Index capacity;
    
    this(Index initialCapacity) {
        this.capacity = initialCapacity;
        this.data = cast(T*) Alloc.allocate(initialCapacity * T.sizeof);
    }
    
    ~this() {
        Alloc.deallocate(this.data);
    }
    
    final Index get_capacity() {
        return capacity;
    }
    
    final T* get_data() {
        return data;
    }
    
    final void set_capacity(Index newCapacity) {
        this.data = cast(T*) Alloc.reallocate(this.data, newCapacity);
        this.capacity = newCapacity;
    }
    
}
