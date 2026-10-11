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
public enum AnalogueIOModeEnum implements Enumerator
{
    CONTINUOUS(0, "continuous", "CONTINUOUS"),
    SINGLE(1, "single", "SINGLE"),
    SEQUENTIAL(2, "sequential", "SEQUENTIAL");

    public static final int CONTINUOUS_VALUE = 0;
    public static final int SINGLE_VALUE = 1;
    public static final int SEQUENTIAL_VALUE = 2;
    private static final AnalogueIOModeEnum[] VALUES_ARRAY;
    public static final List<AnalogueIOModeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new AnalogueIOModeEnum[]{CONTINUOUS, SINGLE, SEQUENTIAL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static AnalogueIOModeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AnalogueIOModeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AnalogueIOModeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AnalogueIOModeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AnalogueIOModeEnum get(int value) {
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

    private AnalogueIOModeEnum(int value, String name, String literal) {
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

