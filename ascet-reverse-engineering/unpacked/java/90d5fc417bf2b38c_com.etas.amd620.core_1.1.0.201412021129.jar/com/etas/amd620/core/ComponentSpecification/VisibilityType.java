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

public enum VisibilityType implements Enumerator
{
    AS_LINE(0, "AsLine", "AsLine"),
    INVISIBLE(1, "Invisible", "Invisible"),
    CONTOUR(2, "Contour", "Contour"),
    HIDE_CONTENTS(3, "HideContents", "HideContents"),
    NORMAL(4, "Normal", "Normal");

    public static final int AS_LINE_VALUE = 0;
    public static final int INVISIBLE_VALUE = 1;
    public static final int CONTOUR_VALUE = 2;
    public static final int HIDE_CONTENTS_VALUE = 3;
    public static final int NORMAL_VALUE = 4;
    private static final VisibilityType[] VALUES_ARRAY;
    public static final List<VisibilityType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new VisibilityType[]{AS_LINE, INVISIBLE, CONTOUR, HIDE_CONTENTS, NORMAL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static VisibilityType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            VisibilityType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static VisibilityType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            VisibilityType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static VisibilityType get(int value) {
        switch (value) {
            case 0: {
                return AS_LINE;
            }
            case 1: {
                return INVISIBLE;
            }
            case 2: {
                return CONTOUR;
            }
            case 3: {
                return HIDE_CONTENTS;
            }
            case 4: {
                return NORMAL;
            }
        }
        return null;
    }

    private VisibilityType(int value, String name, String literal) {
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

