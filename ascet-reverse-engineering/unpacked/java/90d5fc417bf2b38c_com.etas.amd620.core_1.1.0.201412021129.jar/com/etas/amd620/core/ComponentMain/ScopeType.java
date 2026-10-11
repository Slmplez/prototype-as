/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package com.etas.amd620.core.ComponentMain;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

public enum ScopeType implements Enumerator
{
    LOCAL(0, "local", "local"),
    IMPORTED(1, "imported", "imported"),
    EXPORTED(2, "exported", "exported");

    public static final int LOCAL_VALUE = 0;
    public static final int IMPORTED_VALUE = 1;
    public static final int EXPORTED_VALUE = 2;
    private static final ScopeType[] VALUES_ARRAY;
    public static final List<ScopeType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ScopeType[]{LOCAL, IMPORTED, EXPORTED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ScopeType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ScopeType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ScopeType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ScopeType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ScopeType get(int value) {
        switch (value) {
            case 0: {
                return LOCAL;
            }
            case 1: {
                return IMPORTED;
            }
            case 2: {
                return EXPORTED;
            }
        }
        return null;
    }

    private ScopeType(int value, String name, String literal) {
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

