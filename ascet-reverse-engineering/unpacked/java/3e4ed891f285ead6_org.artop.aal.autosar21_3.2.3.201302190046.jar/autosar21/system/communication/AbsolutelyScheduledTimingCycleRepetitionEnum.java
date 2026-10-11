/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.system.communication;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum AbsolutelyScheduledTimingCycleRepetitionEnum implements Enumerator
{
    _1(0, "_1", "1"),
    _2(1, "_2", "2"),
    _4(2, "_4", "4"),
    _8(3, "_8", "8"),
    _16(4, "_16", "16"),
    _32(5, "_32", "32"),
    _64(6, "_64", "64");

    public static final int _1_VALUE = 0;
    public static final int _2_VALUE = 1;
    public static final int _4_VALUE = 2;
    public static final int _8_VALUE = 3;
    public static final int _16_VALUE = 4;
    public static final int _32_VALUE = 5;
    public static final int _64_VALUE = 6;
    private static final AbsolutelyScheduledTimingCycleRepetitionEnum[] VALUES_ARRAY;
    public static final List<AbsolutelyScheduledTimingCycleRepetitionEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new AbsolutelyScheduledTimingCycleRepetitionEnum[]{_1, _2, _4, _8, _16, _32, _64};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static AbsolutelyScheduledTimingCycleRepetitionEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AbsolutelyScheduledTimingCycleRepetitionEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AbsolutelyScheduledTimingCycleRepetitionEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AbsolutelyScheduledTimingCycleRepetitionEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AbsolutelyScheduledTimingCycleRepetitionEnum get(int value) {
        switch (value) {
            case 0: {
                return _1;
            }
            case 1: {
                return _2;
            }
            case 2: {
                return _4;
            }
            case 3: {
                return _8;
            }
            case 4: {
                return _16;
            }
            case 5: {
                return _32;
            }
            case 6: {
                return _64;
            }
        }
        return null;
    }

    private AbsolutelyScheduledTimingCycleRepetitionEnum(int value, String name, String literal) {
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

