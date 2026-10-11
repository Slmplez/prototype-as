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

public enum CacheLockingType implements Enumerator
{
    AUTOMATIC(0, "automatic", "automatic"),
    ON(1, "on", "on"),
    OFF(2, "off", "off");

    public static final int AUTOMATIC_VALUE = 0;
    public static final int ON_VALUE = 1;
    public static final int OFF_VALUE = 2;
    private static final CacheLockingType[] VALUES_ARRAY;
    public static final List<CacheLockingType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CacheLockingType[]{AUTOMATIC, ON, OFF};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CacheLockingType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CacheLockingType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CacheLockingType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CacheLockingType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CacheLockingType get(int value) {
        switch (value) {
            case 0: {
                return AUTOMATIC;
            }
            case 1: {
                return ON;
            }
            case 2: {
                return OFF;
            }
        }
        return null;
    }

    private CacheLockingType(int value, String name, String literal) {
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

