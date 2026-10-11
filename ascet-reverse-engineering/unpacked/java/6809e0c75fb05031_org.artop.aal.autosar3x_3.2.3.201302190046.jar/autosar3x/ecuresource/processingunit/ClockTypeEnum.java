/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.ecuresource.processingunit;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ClockTypeEnum implements Enumerator
{
    PLL(0, "pll", "PLL"),
    DIVIDER(1, "divider", "DIVIDER");

    public static final int PLL_VALUE = 0;
    public static final int DIVIDER_VALUE = 1;
    private static final ClockTypeEnum[] VALUES_ARRAY;
    public static final List<ClockTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ClockTypeEnum[]{PLL, DIVIDER};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ClockTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ClockTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ClockTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ClockTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ClockTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return PLL;
            }
            case 1: {
                return DIVIDER;
            }
        }
        return null;
    }

    private ClockTypeEnum(int value, String name, String literal) {
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

