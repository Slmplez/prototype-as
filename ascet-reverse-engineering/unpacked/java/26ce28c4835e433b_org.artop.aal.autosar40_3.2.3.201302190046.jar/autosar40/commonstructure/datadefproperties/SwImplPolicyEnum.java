/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.datadefproperties;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SwImplPolicyEnum implements Enumerator
{
    CONST(0, "const", "CONST"),
    FIXED(1, "fixed", "FIXED"),
    MEASUREMENT_POINT(2, "measurementPoint", "MEASUREMENT-POINT"),
    QUEUED(3, "queued", "QUEUED"),
    STANDARD(4, "standard", "STANDARD");

    public static final int CONST_VALUE = 0;
    public static final int FIXED_VALUE = 1;
    public static final int MEASUREMENT_POINT_VALUE = 2;
    public static final int QUEUED_VALUE = 3;
    public static final int STANDARD_VALUE = 4;
    private static final SwImplPolicyEnum[] VALUES_ARRAY;
    public static final List<SwImplPolicyEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SwImplPolicyEnum[]{CONST, FIXED, MEASUREMENT_POINT, QUEUED, STANDARD};
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
                return CONST;
            }
            case 1: {
                return FIXED;
            }
            case 2: {
                return MEASUREMENT_POINT;
            }
            case 3: {
                return QUEUED;
            }
            case 4: {
                return STANDARD;
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

