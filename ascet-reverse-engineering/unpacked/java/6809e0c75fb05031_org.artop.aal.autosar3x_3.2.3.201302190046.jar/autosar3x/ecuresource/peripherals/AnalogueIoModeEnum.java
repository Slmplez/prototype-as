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
public enum AnalogueIoModeEnum implements Enumerator
{
    CONTINUOUS(0, "continuous", "CONTINUOUS"),
    SINGLE(1, "single", "SINGLE"),
    SEQUENTIAL(2, "sequential", "SEQUENTIAL");

    public static final int CONTINUOUS_VALUE = 0;
    public static final int SINGLE_VALUE = 1;
    public static final int SEQUENTIAL_VALUE = 2;
    private static final AnalogueIoModeEnum[] VALUES_ARRAY;
    public static final List<AnalogueIoModeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new AnalogueIoModeEnum[]{CONTINUOUS, SINGLE, SEQUENTIAL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static AnalogueIoModeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AnalogueIoModeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AnalogueIoModeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AnalogueIoModeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AnalogueIoModeEnum get(int value) {
        switch (value) {
            case 0: {
                return CONTINUOUS;
            }
            case 1: {
                return SINGLE;
            }
            case 2: {
                return SEQUENTIAL;
            }
        }
        return null;
    }

    private AnalogueIoModeEnum(int value, String name, String literal) {
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

