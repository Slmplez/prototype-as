/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.swcomponent.applicationattributes;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum DataLimitKindEnum implements Enumerator
{
    NONE(0, "none", "NONE"),
    MIN(1, "min", "MIN"),
    MAX(2, "max", "MAX");

    public static final int NONE_VALUE = 0;
    public static final int MIN_VALUE = 1;
    public static final int MAX_VALUE = 2;
    private static final DataLimitKindEnum[] VALUES_ARRAY;
    public static final List<DataLimitKindEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new DataLimitKindEnum[]{NONE, MIN, MAX};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static DataLimitKindEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DataLimitKindEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DataLimitKindEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DataLimitKindEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DataLimitKindEnum get(int value) {
        switch (value) {
            case 0: {
                return NONE;
            }
            case 1: {
                return MIN;
            }
            case 2: {
                return MAX;
            }
        }
        return null;
    }

    private DataLimitKindEnum(int value, String name, String literal) {
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

