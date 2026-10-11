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

public enum CtOutputsType implements Enumerator
{
    DIRECT(0, "direct", "direct"),
    NONDIRECT(1, "nondirect", "nondirect");

    public static final int DIRECT_VALUE = 0;
    public static final int NONDIRECT_VALUE = 1;
    private static final CtOutputsType[] VALUES_ARRAY;
    public static final List<CtOutputsType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CtOutputsType[]{DIRECT, NONDIRECT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CtOutputsType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CtOutputsType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CtOutputsType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CtOutputsType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CtOutputsType get(int value) {
        switch (value) {
            case 0: {
                return DIRECT;
            }
            case 1: {
                return NONDIRECT;
            }
        }
        return null;
    }

    private CtOutputsType(int value, String name, String literal) {
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

