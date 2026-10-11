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
public enum ActuatorHWDefaultPositionTypeEnum implements Enumerator
{
    STABEL(0, "stabel", "STABEL"),
    INSTABLE(1, "instable", "INSTABLE"),
    BI_STABLE(2, "biStable", "BI-STABLE"),
    MULTI_STABLE(3, "multiStable", "MULTI-STABLE");

    public static final int STABEL_VALUE = 0;
    public static final int INSTABLE_VALUE = 1;
    public static final int BI_STABLE_VALUE = 2;
    public static final int MULTI_STABLE_VALUE = 3;
    private static final ActuatorHWDefaultPositionTypeEnum[] VALUES_ARRAY;
    public static final List<ActuatorHWDefaultPositionTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ActuatorHWDefaultPositionTypeEnum[]{STABEL, INSTABLE, BI_STABLE, MULTI_STABLE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ActuatorHWDefaultPositionTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ActuatorHWDefaultPositionTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ActuatorHWDefaultPositionTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ActuatorHWDefaultPositionTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ActuatorHWDefaultPositionTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return STABEL;
            }
            case 1: {
                return INSTABLE;
            }
            case 2: {
                return BI_STABLE;
            }
            case 3: {
                return MULTI_STABLE;
            }
        }
        return null;
    }

    private ActuatorHWDefaultPositionTypeEnum(int value, String name, String literal) {
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

