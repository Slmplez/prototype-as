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

public enum DirectionType1 implements Enumerator
{
    RIGHT(0, "right", "right"),
    LEFT(1, "left", "left"),
    UP(2, "up", "up"),
    DOWN(3, "down", "down"),
    BOTTOM_LEFT(4, "bottomLeft", "bottomLeft"),
    BOTTOM_RIGHT(5, "bottomRight", "bottomRight");

    public static final int RIGHT_VALUE = 0;
    public static final int LEFT_VALUE = 1;
    public static final int UP_VALUE = 2;
    public static final int DOWN_VALUE = 3;
    public static final int BOTTOM_LEFT_VALUE = 4;
    public static final int BOTTOM_RIGHT_VALUE = 5;
    private static final DirectionType1[] VALUES_ARRAY;
    public static final List<DirectionType1> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new DirectionType1[]{RIGHT, LEFT, UP, DOWN, BOTTOM_LEFT, BOTTOM_RIGHT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static DirectionType1 get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DirectionType1 result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DirectionType1 getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DirectionType1 result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DirectionType1 get(int value) {
        switch (value) {
            case 0: {
                return RIGHT;
            }
            case 1: {
                return LEFT;
            }
            case 2: {
                return UP;
            }
            case 3: {
                return DOWN;
            }
            case 4: {
                return BOTTOM_LEFT;
            }
            case 5: {
                return BOTTOM_RIGHT;
            }
        }
        return null;
    }

    private DirectionType1(int value, String name, String literal) {
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

