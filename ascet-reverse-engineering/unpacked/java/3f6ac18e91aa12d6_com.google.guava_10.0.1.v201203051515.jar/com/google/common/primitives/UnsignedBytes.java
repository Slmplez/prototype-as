/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.primitives;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.primitives.UnsignedLongs;
import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Comparator;
import sun.misc.Unsafe;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class UnsignedBytes {
    public static final byte MAX_POWER_OF_TWO = -128;

    private UnsignedBytes() {
    }

    public static int toInt(byte value) {
        return value & 0xFF;
    }

    public static byte checkedCast(long value) {
        Preconditions.checkArgument(value >> 8 == 0L, "out of range: %s", value);
        return (byte)value;
    }

    public static byte saturatedCast(long value) {
        if (value > 255L) {
            return -1;
        }
        if (value < 0L) {
            return 0;
        }
        return (byte)value;
    }

    public static int compare(byte a, byte b) {
        return UnsignedBytes.toInt(a) - UnsignedBytes.toInt(b);
    }

    public static byte min(byte ... array) {
        Preconditions.checkArgument(array.length > 0);
        int min = UnsignedBytes.toInt(array[0]);
        for (int i = 1; i < array.length; ++i) {
            int next = UnsignedBytes.toInt(array[i]);
            if (next >= min) continue;
            min = next;
        }
        return (byte)min;
    }

    public static byte max(byte ... array) {
        Preconditions.checkArgument(array.length > 0);
        int max = UnsignedBytes.toInt(array[0]);
        for (int i = 1; i < array.length; ++i) {
            int next = UnsignedBytes.toInt(array[i]);
            if (next <= max) continue;
            max = next;
        }
        return (byte)max;
    }

    public static String join(String separator, byte ... array) {
        Preconditions.checkNotNull(separator);
        if (array.length == 0) {
            return "";
        }
        StringBuilder builder = new StringBuilder(array.length * 5);
        builder.append(UnsignedBytes.toInt(array[0]));
        for (int i = 1; i < array.length; ++i) {
            builder.append(separator).append(UnsignedBytes.toInt(array[i]));
        }
        return builder.toString();
    }

    public static Comparator<byte[]> lexicographicalComparator() {
        return LexicographicalComparatorHolder.BEST_COMPARATOR;
    }

    @VisibleForTesting
    static Comparator<byte[]> lexicographicalComparatorJavaImpl() {
        return LexicographicalComparatorHolder.PureJavaComparator.INSTANCE;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    @VisibleForTesting
    static class LexicographicalComparatorHolder {
        static final String UNSAFE_COMPARATOR_NAME = LexicographicalComparatorHolder.class.getName() + "$UnsafeComparator";
        static final Comparator<byte[]> BEST_COMPARATOR = LexicographicalComparatorHolder.getBestComparator();

        LexicographicalComparatorHolder() {
        }

        static Comparator<byte[]> getBestComparator() {
            try {
                Class<?> theClass = Class.forName(UNSAFE_COMPARATOR_NAME);
                Comparator comparator = (Comparator)theClass.getEnumConstants()[0];
                return comparator;
            }
            catch (Throwable t) {
                return UnsignedBytes.lexicographicalComparatorJavaImpl();
            }
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        static enum PureJavaComparator implements Comparator<byte[]>
        {
            INSTANCE;


            @Override
            public int compare(byte[] left, byte[] right) {
                int minLength = Math.min(left.length, right.length);
                for (int i = 0; i < minLength; ++i) {
                    int result = UnsignedBytes.compare(left[i], right[i]);
                    if (result == 0) continue;
                    return result;
                }
                return left.length - right.length;
            }
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        @VisibleForTesting
        static enum UnsafeComparator implements Comparator<byte[]>
        {
            INSTANCE;

            static final boolean littleEndian;
            static final Unsafe theUnsafe;
            static final int BYTE_ARRAY_BASE_OFFSET;

            @Override
            public int compare(byte[] left, byte[] right) {
                int i;
                int minLength = Math.min(left.length, right.length);
                int minWords = minLength / 8;
                for (i = 0; i < minWords * 8; i += 8) {
                    int y;
                    long rw;
                    long lw = theUnsafe.getLong((Object)left, (long)BYTE_ARRAY_BASE_OFFSET + (long)i);
                    long diff = lw ^ (rw = theUnsafe.getLong((Object)right, (long)BYTE_ARRAY_BASE_OFFSET + (long)i));
                    if (diff == 0L) continue;
                    if (!littleEndian) {
                        return UnsignedLongs.compare(lw, rw);
                    }
                    int n = 0;
                    int x = (int)diff;
                    if (x == 0) {
                        x = (int)(diff >>> 32);
                        n = 32;
                    }
                    if ((y = x << 16) == 0) {
                        n += 16;
                    } else {
                        x = y;
                    }
                    y = x << 8;
                    if (y == 0) {
                        n += 8;
                    }
                    return (int)((lw >>> n & 0xFFL) - (rw >>> n & 0xFFL));
                }
                for (i = minWords * 8; i < minLength; ++i) {
                    int result = UnsignedBytes.compare(left[i], right[i]);
                    if (result == 0) continue;
                    return result;
                }
                return left.length - right.length;
            }

            static {
                littleEndian = ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN);
                theUnsafe = (Unsafe)AccessController.doPrivileged(new PrivilegedAction<Object>(){

                    @Override
                    public Object run() {
                        try {
                            Field f = Unsafe.class.getDeclaredField("theUnsafe");
                            f.setAccessible(true);
                            return f.get(null);
                        }
                        catch (NoSuchFieldException e) {
                            throw new Error();
                        }
                        catch (IllegalAccessException e) {
                            throw new Error();
                        }
                    }
                });
                BYTE_ARRAY_BASE_OFFSET = theUnsafe.arrayBaseOffset(byte[].class);
                if (theUnsafe.arrayIndexScale(byte[].class) != 1) {
                    throw new AssertionError();
                }
            }
        }
    }
}

