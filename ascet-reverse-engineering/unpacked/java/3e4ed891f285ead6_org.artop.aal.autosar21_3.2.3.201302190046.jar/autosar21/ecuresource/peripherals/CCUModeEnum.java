/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.ecuresource.peripherals;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum CCUModeEnum implements Enumerator
{
    CAPTURE(0, "capture", "CAPTURE"),
    COMPARE(1, "compare", "COMPARE");

    public static final int CAPTURE_VALUE = 0;
    public static final int COMPARE_VALUE = 1;
    private static final CCUModeEnum[] VALUES_ARRAY;
    public static final List<CCUModeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CCUModeEnum[]{CAPTURE, COMPARE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CCUModeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CCUModeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CCUModeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CCUModeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CCUModeEnum get(int value) {
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

    private CCUModeEnum(int value, String name, String literal) {
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

