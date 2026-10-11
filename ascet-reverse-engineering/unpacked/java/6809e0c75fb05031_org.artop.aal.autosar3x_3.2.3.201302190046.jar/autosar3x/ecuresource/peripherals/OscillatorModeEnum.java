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
public enum OscillatorModeEnum implements Enumerator
{
    FUNDAMENTAL(0, "fundamental", "FUNDAMENTAL"),
    OVERTONE(1, "overtone", "OVERTONE");

    public static final int FUNDAMENTAL_VALUE = 0;
    public static final int OVERTONE_VALUE = 1;
    private static final OscillatorModeEnum[] VALUES_ARRAY;
    public static final List<OscillatorModeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new OscillatorModeEnum[]{FUNDAMENTAL, OVERTONE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static OscillatorModeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            OscillatorModeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static OscillatorModeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            OscillatorModeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static OscillatorModeEnum get(int value) {
        switch (value) {
            case 0: {
                return FUNDAMENTAL;
            }
            case 1: {
                return OVERTONE;
            }
        }
        return null;
    }

    private OscillatorModeEnum(int value, String name, String literal) {
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

