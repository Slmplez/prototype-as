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

public enum AccessType1 implements Enumerator
{
    IMPLICIT(0, "implicit", "implicit"),
    EXPLICIT(1, "explicit", "explicit"),
    EXPLICIT_STATUS(2, "explicitStatus", "explicit_status");

    public static final int IMPLICIT_VALUE = 0;
    public static final int EXPLICIT_VALUE = 1;
    public static final int EXPLICIT_STATUS_VALUE = 2;
    private static final AccessType1[] VALUES_ARRAY;
    public static final List<AccessType1> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new AccessType1[]{IMPLICIT, EXPLICIT, EXPLICIT_STATUS};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static AccessType1 get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AccessType1 result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AccessType1 getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AccessType1 result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AccessType1 get(int value) {
        switch (value) {
            case 0: {
                return IMPLICIT;
            }
            case 1: {
                return EXPLICIT;
            }
            case 2: {
                return EXPLICIT_STATUS;
            }
        }
        return null;
    }

    private AccessType1(int value, String name, String literal) {
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

