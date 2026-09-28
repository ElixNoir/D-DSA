class StaticContainer(T, ulong CAPACITY) {
    
    T[CAPACITY] data;
    
    this() {}
    
    this(T[CAPACITY] data) {
        this.data = data;
    }
    
    final ulong get_capacity() {
        return CAPACITY;
    }
    
    final T[CAPACITY] get_data() {
        return data;
    }
    
}
