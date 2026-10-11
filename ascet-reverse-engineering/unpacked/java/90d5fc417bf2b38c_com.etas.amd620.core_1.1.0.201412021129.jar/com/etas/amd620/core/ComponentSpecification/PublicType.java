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

public enum PublicType implements Enumerator
{
    PUBLIC(0, "public", "public"),
    PRIVATE(1, "private", "private");

    public static final int PUBLIC_VALUE = 0;
    public static final int PRIVATE_VALUE = 1;
    private static final PublicType[] VALUES_ARRAY;
    public static final List<PublicType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new PublicType[]{PUBLIC, PRIVATE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static PublicType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            PublicType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static PublicType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            PublicType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static PublicType get(int value) {
        switch (value) {
            case 0: {
                return PUBLIC;
            }
            case 1: {
                return PRIVATE;
            }
        }
        return null;
    }

    private PublicType(int value, String name, String literal) {
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

