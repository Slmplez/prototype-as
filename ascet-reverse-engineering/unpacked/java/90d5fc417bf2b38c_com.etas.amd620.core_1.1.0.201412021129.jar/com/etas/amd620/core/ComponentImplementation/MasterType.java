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

public enum MasterType implements Enumerator
{
    MODEL(0, "Model", "Model"),
    IMPLEMENTATION(1, "Implementation", "Implementation");

    public static final int MODEL_VALUE = 0;
    public static final int IMPLEMENTATION_VALUE = 1;
    private static final MasterType[] VALUES_ARRAY;
    public static final List<MasterType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new MasterType[]{MODEL, IMPLEMENTATION};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static MasterType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MasterType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MasterType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MasterType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MasterType get(int value) {
        switch (value) {
            case 0: {
                return MODEL;
            }
            case 1: {
                return IMPLEMENTATION;
            }
        }
        return null;
    }

    private MasterType(int value, String name, String literal) {
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

