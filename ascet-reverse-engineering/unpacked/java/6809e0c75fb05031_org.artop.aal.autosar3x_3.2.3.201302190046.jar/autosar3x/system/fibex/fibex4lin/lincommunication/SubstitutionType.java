/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.system.fibex.fibex4lin.lincommunication;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SubstitutionType implements Enumerator
{
    SPORADIC(0, "sporadic", "SPORADIC"),
    EVENT_TRIGGERED(1, "eventTriggered", "EVENT-TRIGGERED");

    public static final int SPORADIC_VALUE = 0;
    public static final int EVENT_TRIGGERED_VALUE = 1;
    private static final SubstitutionType[] VALUES_ARRAY;
    public static final List<SubstitutionType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SubstitutionType[]{SPORADIC, EVENT_TRIGGERED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SubstitutionType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SubstitutionType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SubstitutionType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SubstitutionType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SubstitutionType get(int value) {
        switch (value) {
            case 0: {
                return SPORADIC;
            }
            case 1: {
                return EVENT_TRIGGERED;
            }
        }
        return null;
    }

    private SubstitutionType(int value, String name, String literal) {
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

