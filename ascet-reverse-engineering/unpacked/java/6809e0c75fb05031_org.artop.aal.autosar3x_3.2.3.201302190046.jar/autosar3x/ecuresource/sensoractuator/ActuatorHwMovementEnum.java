/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.ecuresource.sensoractuator;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ActuatorHwMovementEnum implements Enumerator
{
    UNIDIRECTIONAL(0, "unidirectional", "UNIDIRECTIONAL"),
    BIDIRECTIONAL(1, "bidirectional", "BIDIRECTIONAL"),
    UNIDIRECTIONAL_WITH_AUTO_RESET(2, "unidirectionalWithAutoReset", "UNIDIRECTIONAL-WITH-AUTO-RESET");

    public static final int UNIDIRECTIONAL_VALUE = 0;
    public static final int BIDIRECTIONAL_VALUE = 1;
    public static final int UNIDIRECTIONAL_WITH_AUTO_RESET_VALUE = 2;
    private static final ActuatorHwMovementEnum[] VALUES_ARRAY;
    public static final List<ActuatorHwMovementEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ActuatorHwMovementEnum[]{UNIDIRECTIONAL, BIDIRECTIONAL, UNIDIRECTIONAL_WITH_AUTO_RESET};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ActuatorHwMovementEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ActuatorHwMovementEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ActuatorHwMovementEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ActuatorHwMovementEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ActuatorHwMovementEnum get(int value) {
        switch (value) {
            case 0: {
                return UNIDIRECTIONAL;
            }
            case 1: {
                return BIDIRECTIONAL;
            }
            case 2: {
                return UNIDIRECTIONAL_WITH_AUTO_RESET;
            }
        }
        return null;
    }

    private ActuatorHwMovementEnum(int value, String name, String literal) {
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

