/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.commonstructure.datadefproperties;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SwImplPolicyEnum implements Enumerator
{
    MEASUREMENT_POINT(0, "measurementPoint", "MEASUREMENT-POINT"),
    STANDARD(1, "standard", "STANDARD"),
    MESSAGE(2, "message", "MESSAGE");

    public static final int MEASUREMENT_POINT_VALUE = 0;
    public static final int STANDARD_VALUE = 1;
    public static final int MESSAGE_VALUE = 2;
    private static final SwImplPolicyEnum[] VALUES_ARRAY;
    public static final List<SwImplPolicyEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SwImplPolicyEnum[]{MEASUREMENT_POINT, STANDARD, MESSAGE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SwImplPolicyEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SwImplPolicyEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SwImplPolicyEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SwImplPolicyEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SwImplPolicyEnum get(int value) {
        switch (value) {
            case 0: {
                return MEASUREMENT_POINT;
            }
            case 1: {
                return STANDARD;
            }
            case 2: {
                return MESSAGE;
            }
        }
        return null;
    }

    private SwImplPolicyEnum(int value, String name, String literal) {
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

