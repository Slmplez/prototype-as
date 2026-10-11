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

public enum TypeType implements Enumerator
{
    IF_THEN(0, "IfThen", "IfThen"),
    IF_THEN_ELSE(1, "IfThenElse", "IfThenElse"),
    WHILE(2, "While", "While"),
    SWITCH(3, "Switch", "Switch"),
    BREAK(4, "Break", "Break"),
    RTE_ACCESS(5, "RteAccess", "RteAccess"),
    RTE_STATUS(6, "RteStatus", "RteStatus"),
    RTE_INVOKE(7, "RteInvoke", "RteInvoke");

    public static final int IF_THEN_VALUE = 0;
    public static final int IF_THEN_ELSE_VALUE = 1;
    public static final int WHILE_VALUE = 2;
    public static final int SWITCH_VALUE = 3;
    public static final int BREAK_VALUE = 4;
    public static final int RTE_ACCESS_VALUE = 5;
    public static final int RTE_STATUS_VALUE = 6;
    public static final int RTE_INVOKE_VALUE = 7;
    private static final TypeType[] VALUES_ARRAY;
    public static final List<TypeType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TypeType[]{IF_THEN, IF_THEN_ELSE, WHILE, SWITCH, BREAK, RTE_ACCESS, RTE_STATUS, RTE_INVOKE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TypeType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TypeType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TypeType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TypeType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TypeType get(int value) {
        switch (value) {
            case 0: {
                return IF_THEN;
            }
            case 1: {
                return IF_THEN_ELSE;
            }
            case 2: {
                return WHILE;
            }
            case 3: {
                return SWITCH;
            }
            case 4: {
                return BREAK;
            }
            case 5: {
                return RTE_ACCESS;
            }
            case 6: {
                return RTE_STATUS;
            }
            case 7: {
                return RTE_INVOKE;
            }
        }
        return null;
    }

    private TypeType(int value, String name, String literal) {
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

