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

public enum TypeType2 implements Enumerator
{
    VARIABLE(0, "Variable", "Variable"),
    PARAMETER(1, "Parameter", "Parameter"),
    IMPL_CAST(2, "ImplCast", "ImplCast"),
    ARGUMENT(3, "Argument", "Argument"),
    RETURN(4, "Return", "Return"),
    LOCAL(5, "Local", "Local"),
    CONSTANT(6, "Constant", "Constant"),
    SYSTEM_CONSTANT(7, "SystemConstant", "SystemConstant"),
    UNDEFINED(8, "Undefined", "Undefined");

    public static final int VARIABLE_VALUE = 0;
    public static final int PARAMETER_VALUE = 1;
    public static final int IMPL_CAST_VALUE = 2;
    public static final int ARGUMENT_VALUE = 3;
    public static final int RETURN_VALUE = 4;
    public static final int LOCAL_VALUE = 5;
    public static final int CONSTANT_VALUE = 6;
    public static final int SYSTEM_CONSTANT_VALUE = 7;
    public static final int UNDEFINED_VALUE = 8;
    private static final TypeType2[] VALUES_ARRAY;
    public static final List<TypeType2> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TypeType2[]{VARIABLE, PARAMETER, IMPL_CAST, ARGUMENT, RETURN, LOCAL, CONSTANT, SYSTEM_CONSTANT, UNDEFINED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TypeType2 get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TypeType2 result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TypeType2 getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TypeType2 result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TypeType2 get(int value) {
        switch (value) {
            case 0: {
                return VARIABLE;
            }
            case 1: {
                return PARAMETER;
            }
            case 2: {
                return IMPL_CAST;
            }
            case 3: {
                return ARGUMENT;
            }
            case 4: {
                return RETURN;
            }
            case 5: {
                return LOCAL;
            }
            case 6: {
                return CONSTANT;
            }
            case 7: {
                return SYSTEM_CONSTANT;
            }
            case 8: {
                return UNDEFINED;
            }
        }
        return null;
    }

    private TypeType2(int value, String name, String literal) {
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

