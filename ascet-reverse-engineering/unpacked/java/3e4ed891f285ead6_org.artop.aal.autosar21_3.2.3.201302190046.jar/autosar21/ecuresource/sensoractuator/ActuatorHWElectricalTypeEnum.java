/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.ecuresource.sensoractuator;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ActuatorHWElectricalTypeEnum implements Enumerator
{
    RESISTIVE(0, "resistive", "RESISTIVE"),
    CAPACITIVE(1, "capacitive", "CAPACITIVE"),
    INDUCTIVE(2, "inductive", "INDUCTIVE");

    public static final int RESISTIVE_VALUE = 0;
    public static final int CAPACITIVE_VALUE = 1;
    public static final int INDUCTIVE_VALUE = 2;
    private static final ActuatorHWElectricalTypeEnum[] VALUES_ARRAY;
    public static final List<ActuatorHWElectricalTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ActuatorHWElectricalTypeEnum[]{RESISTIVE, CAPACITIVE, INDUCTIVE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ActuatorHWElectricalTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ActuatorHWElectricalTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ActuatorHWElectricalTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ActuatorHWElectricalTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ActuatorHWElectricalTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return RESISTIVE;
            }
            case 1: {
                return CAPACITIVE;
            }
            case 2: {
                return INDUCTIVE;
            }
        }
        return null;
    }

    private ActuatorHWElectricalTypeEnum(int value, String name, String literal) {
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

