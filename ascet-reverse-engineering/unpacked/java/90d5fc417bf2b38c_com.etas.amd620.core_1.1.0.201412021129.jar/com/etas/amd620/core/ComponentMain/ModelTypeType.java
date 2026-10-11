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

public enum ModelTypeType implements Enumerator
{
    SCALAR(0, "scalar", "scalar"),
    ONED(1, "oned", "oned"),
    TWOD(2, "twod", "twod"),
    ARRAY(3, "array", "array"),
    MATRIX(4, "matrix", "matrix"),
    DISTRIBUTION(5, "distribution", "distribution"),
    COMPLEX(6, "complex", "complex");

    public static final int SCALAR_VALUE = 0;
    public static final int ONED_VALUE = 1;
    public static final int TWOD_VALUE = 2;
    public static final int ARRAY_VALUE = 3;
    public static final int MATRIX_VALUE = 4;
    public static final int DISTRIBUTION_VALUE = 5;
    public static final int COMPLEX_VALUE = 6;
    private static final ModelTypeType[] VALUES_ARRAY;
    public static final List<ModelTypeType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ModelTypeType[]{SCALAR, ONED, TWOD, ARRAY, MATRIX, DISTRIBUTION, COMPLEX};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ModelTypeType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ModelTypeType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ModelTypeType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ModelTypeType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ModelTypeType get(int value) {
        switch (value) {
            case 0: {
                return SCALAR;
            }
            case 1: {
                return ONED;
            }
            case 2: {
                return TWOD;
            }
            case 3: {
                return ARRAY;
            }
            case 4: {
                return MATRIX;
            }
            case 5: {
                return DISTRIBUTION;
            }
            case 6: {
                return COMPLEX;
            }
        }
        return null;
    }

    private ModelTypeType(int value, String name, String literal) {
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

