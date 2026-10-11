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

public enum TypeType1 implements Enumerator
{
    RTE_ACCESS(0, "RteAccess", "RteAccess");

    public static final int RTE_ACCESS_VALUE = 0;
    private static final TypeType1[] VALUES_ARRAY;
    public static final List<TypeType1> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TypeType1[]{RTE_ACCESS};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TypeType1 get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TypeType1 result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TypeType1 getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TypeType1 result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TypeType1 get(int value) {
        switch (value) {
            case 0: {
                return RTE_ACCESS;
            }
        }
        return null;
    }

    private TypeType1(int value, String name, String literal) {
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

