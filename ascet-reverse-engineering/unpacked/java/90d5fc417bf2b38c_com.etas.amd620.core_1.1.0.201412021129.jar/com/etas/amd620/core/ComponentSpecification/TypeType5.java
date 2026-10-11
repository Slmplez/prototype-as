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

public enum TypeType5 implements Enumerator
{
    LINE_SOLID(0, "LineSolid", "LineSolid"),
    LINE_ON_OFF_DASH(1, "LineOnOffDash", "LineOnOffDash"),
    LINE_DOUBLE_DASH(2, "LineDoubleDash", "LineDoubleDash");

    public static final int LINE_SOLID_VALUE = 0;
    public static final int LINE_ON_OFF_DASH_VALUE = 1;
    public static final int LINE_DOUBLE_DASH_VALUE = 2;
    private static final TypeType5[] VALUES_ARRAY;
    public static final List<TypeType5> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TypeType5[]{LINE_SOLID, LINE_ON_OFF_DASH, LINE_DOUBLE_DASH};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TypeType5 get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TypeType5 result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TypeType5 getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TypeType5 result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TypeType5 get(int value) {
        switch (value) {
            case 0: {
                return LINE_SOLID;
            }
            case 1: {
                return LINE_ON_OFF_DASH;
            }
            case 2: {
                return LINE_DOUBLE_DASH;
            }
        }
        return null;
    }

    private TypeType5(int value, String name, String literal) {
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

