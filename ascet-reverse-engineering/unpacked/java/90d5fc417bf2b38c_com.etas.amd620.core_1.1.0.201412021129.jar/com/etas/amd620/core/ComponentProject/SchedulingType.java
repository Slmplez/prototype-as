/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package com.etas.amd620.core.ComponentProject;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

public enum SchedulingType implements Enumerator
{
    COOPERATIVE(0, "cooperative", "cooperative"),
    PREEMPTIVE(1, "preemptive", "preemptive"),
    NONPREEMPTIVE(2, "nonpreemptive", "nonpreemptive"),
    COOPERATIVE1(3, "COOPERATIVE1", "COOPERATIVE"),
    FULL(4, "FULL", "FULL"),
    NON(5, "NON", "NON"),
    UNDEF(6, "undef", "undef");

    public static final int COOPERATIVE_VALUE = 0;
    public static final int PREEMPTIVE_VALUE = 1;
    public static final int NONPREEMPTIVE_VALUE = 2;
    public static final int COOPERATIVE1_VALUE = 3;
    public static final int FULL_VALUE = 4;
    public static final int NON_VALUE = 5;
    public static final int UNDEF_VALUE = 6;
    private static final SchedulingType[] VALUES_ARRAY;
    public static final List<SchedulingType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SchedulingType[]{COOPERATIVE, PREEMPTIVE, NONPREEMPTIVE, COOPERATIVE1, FULL, NON, UNDEF};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SchedulingType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SchedulingType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SchedulingType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SchedulingType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SchedulingType get(int value) {
        switch (value) {
            case 0: {
                return COOPERATIVE;
            }
            case 1: {
                return PREEMPTIVE;
            }
            case 2: {
                return NONPREEMPTIVE;
            }
            case 3: {
                return COOPERATIVE1;
            }
            case 4: {
                return FULL;
            }
            case 5: {
                return NON;
            }
            case 6: {
                return UNDEF;
            }
        }
        return null;
    }

    private SchedulingType(int value, String name, String literal) {
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

