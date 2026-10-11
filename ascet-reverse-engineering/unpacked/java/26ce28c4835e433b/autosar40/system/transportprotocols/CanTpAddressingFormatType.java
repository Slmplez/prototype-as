/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.system.transportprotocols;

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
    MIXED(1, "mixed", "MIXED"),
    EXTENDED(2, "extended", "EXTENDED");

    public static final int STANDARD_VALUE = 0;
    public static final int MIXED_VALUE = 1;
    public static final int EXTENDED_VALUE = 2;
    private static final CanTpAddressingFormatType[] VALUES_ARRAY;
    public static final List<CanTpAddressingFormatType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CanTpAddressingFormatType[]{STANDARD, MIXED, EXTENDED};
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
                return MIXED;
            }
            case 2: {
                return EXTENDED;
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

