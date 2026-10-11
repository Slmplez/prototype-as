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

public enum AccessType implements Enumerator
{
    EXPLICIT(0, "explicit", "explicit"),
    EXPLICIT_STATUS(1, "explicitStatus", "explicit_status");

    public static final int EXPLICIT_VALUE = 0;
    public static final int EXPLICIT_STATUS_VALUE = 1;
    private static final AccessType[] VALUES_ARRAY;
    public static final List<AccessType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new AccessType[]{EXPLICIT, EXPLICIT_STATUS};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static AccessType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AccessType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AccessType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AccessType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AccessType get(int value) {
        switch (value) {
            case 0: {
                return EXPLICIT;
            }
            case 1: {
                return EXPLICIT_STATUS;
            }
        }
        return null;
    }

    private AccessType(int value, String name, String literal) {
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

