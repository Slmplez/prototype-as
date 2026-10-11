/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.genericstructure.commonpatterns.enumerations;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ByteOrderEnum implements Enumerator
{
    MOST_SIGNIFICANT_BYTE_LAST(0, "mostSignificantByteLast", "MOST-SIGNIFICANT-BYTE-LAST"),
    MOST_SIGNIFICANT_BYTE_FIRST(1, "mostSignificantByteFirst", "MOST-SIGNIFICANT-BYTE-FIRST");

    public static final int MOST_SIGNIFICANT_BYTE_LAST_VALUE = 0;
    public static final int MOST_SIGNIFICANT_BYTE_FIRST_VALUE = 1;
    private static final ByteOrderEnum[] VALUES_ARRAY;
    public static final List<ByteOrderEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ByteOrderEnum[]{MOST_SIGNIFICANT_BYTE_LAST, MOST_SIGNIFICANT_BYTE_FIRST};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ByteOrderEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ByteOrderEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ByteOrderEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ByteOrderEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ByteOrderEnum get(int value) {
        switch (value) {
            case 0: {
                return MOST_SIGNIFICANT_BYTE_LAST;
            }
            case 1: {
                return MOST_SIGNIFICANT_BYTE_FIRST;
            }
        }
        return null;
    }

    private ByteOrderEnum(int value, String name, String literal) {
        this.value = value;
        this.name = name;
        this.literal = literal;
    }

    public int getValue() {
        return this.value;
    }

    public String getName() {
        return this.name;
    }

    public String getLiteral() {
        return this.literal;
    }

    public String toString() {
        return this.literal;
    }
}

