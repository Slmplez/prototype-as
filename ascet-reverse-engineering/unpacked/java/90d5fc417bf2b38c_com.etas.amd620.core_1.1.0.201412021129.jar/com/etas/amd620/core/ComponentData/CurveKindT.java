/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package com.etas.amd620.core.ComponentData;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

public enum CurveKindT implements Enumerator
{
    NORMAL(0, "normal", "normal"),
    FIXED(1, "fixed", "fixed"),
    GROUPED(2, "grouped", "grouped");

    public static final int NORMAL_VALUE = 0;
    public static final int FIXED_VALUE = 1;
    public static final int GROUPED_VALUE = 2;
    private static final CurveKindT[] VALUES_ARRAY;
    public static final List<CurveKindT> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CurveKindT[]{NORMAL, FIXED, GROUPED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CurveKindT get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CurveKindT result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CurveKindT getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CurveKindT result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CurveKindT get(int value) {
        switch (value) {
            case 0: {
                return NORMAL;
            }
            case 1: {
                return FIXED;
            }
            case 2: {
                return GROUPED;
            }
        }
        return null;
    }

    private CurveKindT(int value, String name, String literal) {
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

