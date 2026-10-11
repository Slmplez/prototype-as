/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package com.etas.amd620.core.ComponentSpecification;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

public enum OperatorTType implements Enumerator
{
    _(0, "_", "+"),
    _1(1, "_1", "-"),
    _2(2, "_2", "*"),
    _3(3, "_3", "/"),
    _4(4, "_4", "%"),
    _5(5, "_5", "&"),
    _6(6, "_6", "|"),
    NOT(7, "not", "not"),
    _7(8, "_7", ">"),
    _8(9, "_8", "<"),
    _9(10, "_9", "<="),
    _10(11, "_10", ">="),
    _11(12, "_11", "="),
    _12(13, "_12", "!="),
    ABS(14, "abs", "abs"),
    MAX(15, "max", "max"),
    MIN(16, "min", "min"),
    BET(17, "bet", "bet"),
    NEG(18, "neg", "neg"),
    CASE(19, "Case", "Case"),
    MUX(20, "MUX", "MUX");

    public static final int __VALUE = 0;
    public static final int _1_VALUE = 1;
    public static final int _2_VALUE = 2;
    public static final int _3_VALUE = 3;
    public static final int _4_VALUE = 4;
    public static final int _5_VALUE = 5;
    public static final int _6_VALUE = 6;
    public static final int NOT_VALUE = 7;
    public static final int _7_VALUE = 8;
    public static final int _8_VALUE = 9;
    public static final int _9_VALUE = 10;
    public static final int _10_VALUE = 11;
    public static final int _11_VALUE = 12;
    public static final int _12_VALUE = 13;
    public static final int ABS_VALUE = 14;
    public static final int MAX_VALUE = 15;
    public static final int MIN_VALUE = 16;
    public static final int BET_VALUE = 17;
    public static final int NEG_VALUE = 18;
    public static final int CASE_VALUE = 19;
    public static final int MUX_VALUE = 20;
    private static final OperatorTType[] VALUES_ARRAY;
    public static final List<OperatorTType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new OperatorTType[]{_, _1, _2, _3, _4, _5, _6, NOT, _7, _8, _9, _10, _11, _12, ABS, MAX, MIN, BET, NEG, CASE, MUX};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static OperatorTType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            OperatorTType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static OperatorTType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            OperatorTType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static OperatorTType get(int value) {
        switch (value) {
            case 0: {
                return _;
            }
            case 1: {
                return _1;
            }
            case 2: {
                return _2;
            }
            case 3: {
                return _3;
            }
            case 4: {
                return _4;
            }
            case 5: {
                return _5;
            }
            case 6: {
                return _6;
            }
            case 7: {
                return NOT;
            }
            case 8: {
                return _7;
            }
            case 9: {
                return _8;
            }
            case 10: {
                return _9;
            }
            case 11: {
                return _10;
            }
            case 12: {
                return _11;
            }
            case 13: {
                return _12;
            }
            case 14: {
                return ABS;
            }
            case 15: {
                return MAX;
            }
            case 16: {
                return MIN;
            }
            case 17: {
                return BET;
            }
            case 18: {
                return NEG;
            }
            case 19: {
                return CASE;
            }
            case 20: {
                return MUX;
            }
        }
        return null;
    }

    private OperatorTType(int value, String name, String literal) {
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

