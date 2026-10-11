/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.ecuresource.peripherals;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum CcuModeEnum implements Enumerator
{
    CAPTURE(0, "capture", "CAPTURE"),
    COMPARE(1, "compare", "COMPARE");

    public static final int CAPTURE_VALUE = 0;
    public static final int COMPARE_VALUE = 1;
    private static final CcuModeEnum[] VALUES_ARRAY;
    public static final List<CcuModeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CcuModeEnum[]{CAPTURE, COMPARE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CcuModeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CcuModeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CcuModeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CcuModeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CcuModeEnum get(int value) {
        switch (value) {
            case 0: {
                return CAPTURE;
            }
            case 1: {
                return COMPARE;
            }
        }
        return null;
    }

    private CcuModeEnum(int value, String name, String literal) {
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

