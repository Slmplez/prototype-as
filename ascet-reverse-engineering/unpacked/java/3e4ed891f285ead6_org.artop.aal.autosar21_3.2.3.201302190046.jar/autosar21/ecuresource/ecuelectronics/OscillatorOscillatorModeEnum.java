/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.ecuresource.ecuelectronics;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum OscillatorOscillatorModeEnum implements Enumerator
{
    FUNDAMENTAL(0, "fundamental", "FUNDAMENTAL"),
    OVERTONE(1, "overtone", "OVERTONE");

    public static final int FUNDAMENTAL_VALUE = 0;
    public static final int OVERTONE_VALUE = 1;
    private static final OscillatorOscillatorModeEnum[] VALUES_ARRAY;
    public static final List<OscillatorOscillatorModeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new OscillatorOscillatorModeEnum[]{FUNDAMENTAL, OVERTONE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static OscillatorOscillatorModeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            OscillatorOscillatorModeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static OscillatorOscillatorModeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            OscillatorOscillatorModeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static OscillatorOscillatorModeEnum get(int value) {
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

    private OscillatorOscillatorModeEnum(int value, String name, String literal) {
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

