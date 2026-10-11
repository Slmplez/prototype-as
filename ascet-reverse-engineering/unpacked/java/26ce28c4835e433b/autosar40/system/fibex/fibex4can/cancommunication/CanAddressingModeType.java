/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.system.fibex.fibex4can.cancommunication;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum CanAddressingModeType implements Enumerator
{
    STANDARD(0, "standard", "STANDARD"),
    EXTENDED(1, "extended", "EXTENDED");

    public static final int STANDARD_VALUE = 0;
    public static final int EXTENDED_VALUE = 1;
    private static final CanAddressingModeType[] VALUES_ARRAY;
    public static final List<CanAddressingModeType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CanAddressingModeType[]{STANDARD, EXTENDED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CanAddressingModeType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CanAddressingModeType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CanAddressingModeType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CanAddressingModeType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CanAddressingModeType get(int value) {
        switch (value) {
            case 0: {
                return STANDARD;
            }
            case 1: {
                return EXTENDED;
            }
        }
        return null;
    }

    private CanAddressingModeType(int value, String name, String literal) {
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

