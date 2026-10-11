/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.swcomponent.measurementandcalibration.globalconstraints;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ScaleConstrValidityEnum implements Enumerator
{
    NOT_DEFINED(0, "notDefined", "NOT-DEFINED"),
    NOT_VALID(1, "notValid", "NOT-VALID"),
    NOT_AVAILABLE(2, "notAvailable", "NOT-AVAILABLE"),
    VALID(3, "valid", "VALID");

    public static final int NOT_DEFINED_VALUE = 0;
    public static final int NOT_VALID_VALUE = 1;
    public static final int NOT_AVAILABLE_VALUE = 2;
    public static final int VALID_VALUE = 3;
    private static final ScaleConstrValidityEnum[] VALUES_ARRAY;
    public static final List<ScaleConstrValidityEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ScaleConstrValidityEnum[]{NOT_DEFINED, NOT_VALID, NOT_AVAILABLE, VALID};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ScaleConstrValidityEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ScaleConstrValidityEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ScaleConstrValidityEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ScaleConstrValidityEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ScaleConstrValidityEnum get(int value) {
        switch (value) {
            case 0: {
                return NOT_DEFINED;
            }
            case 1: {
                return NOT_VALID;
            }
            case 2: {
                return NOT_AVAILABLE;
            }
            case 3: {
                return VALID;
            }
        }
        return null;
    }

    private ScaleConstrValidityEnum(int value, String name, String literal) {
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

