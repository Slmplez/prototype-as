/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.system.transportprotocols;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum MaximumMessageLengthType implements Enumerator
{
    ISO6(0, "iso6", "ISO-6"),
    ISO(1, "iso", "ISO"),
    L4G(2, "l4g", "L-4-G");

    public static final int ISO6_VALUE = 0;
    public static final int ISO_VALUE = 1;
    public static final int L4G_VALUE = 2;
    private static final MaximumMessageLengthType[] VALUES_ARRAY;
    public static final List<MaximumMessageLengthType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new MaximumMessageLengthType[]{ISO6, ISO, L4G};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static MaximumMessageLengthType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MaximumMessageLengthType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MaximumMessageLengthType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MaximumMessageLengthType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MaximumMessageLengthType get(int value) {
        switch (value) {
            case 0: {
                return ISO6;
            }
            case 1: {
                return ISO;
            }
            case 2: {
                return L4G;
            }
        }
        return null;
    }

    private MaximumMessageLengthType(int value, String name, String literal) {
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

