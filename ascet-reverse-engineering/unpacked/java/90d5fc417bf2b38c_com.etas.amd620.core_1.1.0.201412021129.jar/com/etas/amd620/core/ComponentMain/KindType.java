/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package com.etas.amd620.core.ComponentMain;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

public enum KindType implements Enumerator
{
    VARIABLE(0, "variable", "variable"),
    PARAMETER(1, "parameter", "parameter"),
    CONSTANT(2, "constant", "constant"),
    SYSCONSTANT(3, "sysconstant", "sysconstant"),
    INPUT(4, "input", "input"),
    OUTPUT(5, "output", "output"),
    CT(6, "ct", "ct"),
    DISCRETE(7, "discrete", "discrete"),
    CONTINUOUS(8, "continuous", "continuous"),
    STEPLOCAL(9, "steplocal", "steplocal"),
    DEPENDENT(10, "dependent", "dependent"),
    MESSAGE(11, "message", "message"),
    INTERRUNNABLE(12, "interrunnable", "interrunnable");

    public static final int VARIABLE_VALUE = 0;
    public static final int PARAMETER_VALUE = 1;
    public static final int CONSTANT_VALUE = 2;
    public static final int SYSCONSTANT_VALUE = 3;
    public static final int INPUT_VALUE = 4;
    public static final int OUTPUT_VALUE = 5;
    public static final int CT_VALUE = 6;
    public static final int DISCRETE_VALUE = 7;
    public static final int CONTINUOUS_VALUE = 8;
    public static final int STEPLOCAL_VALUE = 9;
    public static final int DEPENDENT_VALUE = 10;
    public static final int MESSAGE_VALUE = 11;
    public static final int INTERRUNNABLE_VALUE = 12;
    private static final KindType[] VALUES_ARRAY;
    public static final List<KindType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new KindType[]{VARIABLE, PARAMETER, CONSTANT, SYSCONSTANT, INPUT, OUTPUT, CT, DISCRETE, CONTINUOUS, STEPLOCAL, DEPENDENT, MESSAGE, INTERRUNNABLE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static KindType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            KindType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static KindType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            KindType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static KindType get(int value) {
        switch (value) {
            case 0: {
                return VARIABLE;
            }
            case 1: {
                return PARAMETER;
            }
            case 2: {
                return CONSTANT;
            }
            case 3: {
                return SYSCONSTANT;
            }
            case 4: {
                return INPUT;
            }
            case 5: {
                return OUTPUT;
            }
            case 6: {
                return CT;
            }
            case 7: {
                return DISCRETE;
            }
            case 8: {
                return CONTINUOUS;
            }
            case 9: {
                return STEPLOCAL;
            }
            case 10: {
                return DEPENDENT;
            }
            case 11: {
                return MESSAGE;
            }
            case 12: {
                return INTERRUNNABLE;
            }
        }
        return null;
    }

    private KindType(int value, String name, String literal) {
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

