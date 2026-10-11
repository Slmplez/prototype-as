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
public enum DigitalIOEdgeDetectionEnum implements Enumerator
{
    RISING(0, "rising", "RISING"),
    FALLING(1, "falling", "FALLING"),
    RISING_FALLING(2, "risingFalling", "RISING-FALLING");

    public static final int RISING_VALUE = 0;
    public static final int FALLING_VALUE = 1;
    public static final int RISING_FALLING_VALUE = 2;
    private static final DigitalIOEdgeDetectionEnum[] VALUES_ARRAY;
    public static final List<DigitalIOEdgeDetectionEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new DigitalIOEdgeDetectionEnum[]{RISING, FALLING, RISING_FALLING};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static DigitalIOEdgeDetectionEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DigitalIOEdgeDetectionEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DigitalIOEdgeDetectionEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DigitalIOEdgeDetectionEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DigitalIOEdgeDetectionEnum get(int value) {
        switch (value) {
            case 0: {
                return RISING;
            }
            case 1: {
                return FALLING;
            }
            case 2: {
                return RISING_FALLING;
            }
        }
        return null;
    }

    private DigitalIOEdgeDetectionEnum(int value, String name, String literal) {
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

