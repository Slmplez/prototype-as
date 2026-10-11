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

public enum DirectionType implements Enumerator
{
    HORIZONTAL(0, "horizontal", "horizontal"),
    VERTIKAL(1, "vertikal", "vertikal");

    public static final int HORIZONTAL_VALUE = 0;
    public static final int VERTIKAL_VALUE = 1;
    private static final DirectionType[] VALUES_ARRAY;
    public static final List<DirectionType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new DirectionType[]{HORIZONTAL, VERTIKAL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static DirectionType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DirectionType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DirectionType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DirectionType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DirectionType get(int value) {
        switch (value) {
            case 0: {
                return HORIZONTAL;
            }
            case 1: {
                return VERTIKAL;
            }
        }
        return null;
    }

    private DirectionType(int value, String name, String literal) {
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

