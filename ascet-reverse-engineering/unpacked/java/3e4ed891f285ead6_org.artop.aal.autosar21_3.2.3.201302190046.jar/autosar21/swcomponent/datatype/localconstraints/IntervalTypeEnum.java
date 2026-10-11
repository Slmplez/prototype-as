/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.swcomponent.datatype.localconstraints;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum IntervalTypeEnum implements Enumerator
{
    OPEN(0, "open", "OPEN"),
    INFINITE(1, "infinite", "INFINITE"),
    CLOSED(2, "closed", "CLOSED");

    public static final int OPEN_VALUE = 0;
    public static final int INFINITE_VALUE = 1;
    public static final int CLOSED_VALUE = 2;
    private static final IntervalTypeEnum[] VALUES_ARRAY;
    public static final List<IntervalTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new IntervalTypeEnum[]{OPEN, INFINITE, CLOSED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static IntervalTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            IntervalTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static IntervalTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            IntervalTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static IntervalTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return OPEN;
            }
            case 1: {
                return INFINITE;
            }
            case 2: {
                return CLOSED;
            }
        }
        return null;
    }

    private IntervalTypeEnum(int value, String name, String literal) {
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

