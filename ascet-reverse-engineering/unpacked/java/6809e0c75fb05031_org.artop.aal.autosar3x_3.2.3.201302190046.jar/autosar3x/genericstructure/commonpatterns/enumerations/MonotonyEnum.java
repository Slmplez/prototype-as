/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.genericstructure.commonpatterns.enumerations;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum MonotonyEnum implements Enumerator
{
    INCREASING(0, "increasing", "INCREASING"),
    DECREASING(1, "decreasing", "DECREASING"),
    STRICTLY_INCREASING(2, "strictlyIncreasing", "STRICTLY-INCREASING"),
    STRICTLY_DECREASING(3, "strictlyDecreasing", "STRICTLY-DECREASING"),
    NO_MONOTONY(4, "noMonotony", "NO-MONOTONY");

    public static final int INCREASING_VALUE = 0;
    public static final int DECREASING_VALUE = 1;
    public static final int STRICTLY_INCREASING_VALUE = 2;
    public static final int STRICTLY_DECREASING_VALUE = 3;
    public static final int NO_MONOTONY_VALUE = 4;
    private static final MonotonyEnum[] VALUES_ARRAY;
    public static final List<MonotonyEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new MonotonyEnum[]{INCREASING, DECREASING, STRICTLY_INCREASING, STRICTLY_DECREASING, NO_MONOTONY};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static MonotonyEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MonotonyEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MonotonyEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MonotonyEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MonotonyEnum get(int value) {
        switch (value) {
            case 0: {
                return INCREASING;
            }
            case 1: {
                return DECREASING;
            }
            case 2: {
                return STRICTLY_INCREASING;
            }
            case 3: {
                return STRICTLY_DECREASING;
            }
            case 4: {
                return NO_MONOTONY;
            }
        }
        return null;
    }

    private MonotonyEnum(int value, String name, String literal) {
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

