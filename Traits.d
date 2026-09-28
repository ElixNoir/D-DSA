import std.traits : isUnsigned, isIntegral;

enum isUnsignedIntegral(T) = isIntegral!T && isUnsigned!T;
