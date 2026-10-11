/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package com.etas.amd620.core.ComponentImplementation;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

public enum LimitOverflowType implements Enumerator
{
    NONE(0, "none", "none"),
    AUTOMATIC(1, "automatic", "automatic"),
    KEEP(2, "keep", "keep"),
    REDUCE(3, "reduce", "reduce");

    public static final int NONE_VALUE = 0;
    public static final int AUTOMATIC_VALUE = 1;
    public static final int KEEP_VALUE = 2;
    public static final int REDUCE_VALUE = 3;
    private static final LimitOverflowType[] VALUES_ARRAY;
    public static final List<LimitOverflowType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new LimitOverflowType[]{NONE, AUTOMATIC, KEEP, REDUCE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static LimitOverflowType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            LimitOverflowType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static LimitOverflowType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            LimitOverflowType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static LimitOverflowType get(int value) {
        switch (value) {
            case 0: {
                return NONE;
            }
            case 1: {
                return AUTOMATIC;
            }
            case 2: {
                return KEEP;
            }
            case 3: {
                return REDUCE;
            }
        }
        return null;
    }

    private LimitOverflowType(int value, String name, String literal) {
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

