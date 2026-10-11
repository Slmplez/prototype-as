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
public enum CanTpAddressingFormatType implements Enumerator
{
    STANDARD(0, "standard", "STANDARD"),
    EXTENDED(1, "extended", "EXTENDED"),
    MIXED(2, "mixed", "MIXED");

    public static final int STANDARD_VALUE = 0;
    public static final int EXTENDED_VALUE = 1;
    public static final int MIXED_VALUE = 2;
    private static final CanTpAddressingFormatType[] VALUES_ARRAY;
    public static final List<CanTpAddressingFormatType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CanTpAddressingFormatType[]{STANDARD, EXTENDED, MIXED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CanTpAddressingFormatType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CanTpAddressingFormatType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CanTpAddressingFormatType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CanTpAddressingFormatType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CanTpAddressingFormatType get(int value) {
        switch (value) {
            case 0: {
                return STANDARD;
            }
            case 1: {
                return EXTENDED;
            }
            case 2: {
                return MIXED;
            }
        }
        return null;
    }

    private CanTpAddressingFormatType(int value, String name, String literal) {
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

