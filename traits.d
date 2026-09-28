import std.traits : isUnsigned, isIntegral;

enum isUnsignedIntegral(T) = isIntegral!T && isUnsigned!T;

template SmallestSignedType(ulong value) {
    static if (value <= byte.max && value >= byte.min)
        alias SmallestUnsignedType = byte;
    else static if (value <= short.max && value >= short.min)
        alias SmallestUnsignedType = short;
    else static if (value <= int.max && value >= int.min)
        alias SmallestUnsignedType = int;
    else
        alias SmallestUnsignedType = long;
}

template SmallestUnsignedType(ulong value) {
    static if (value <= ubyte.max)
        alias SmallestUnsignedType = ubyte;
    else static if (value <= ushort.max)
        alias SmallestUnsignedType = ushort;
    else static if (value <= uint.max)
        alias SmallestUnsignedType = uint;
    else
        alias SmallestUnsignedType = ulong;
}
