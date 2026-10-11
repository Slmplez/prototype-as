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

public enum ModeSwitchTypeType implements Enumerator
{
    ENTRY(0, "entry", "entry"),
    EXIT(1, "exit", "exit");

    public static final int ENTRY_VALUE = 0;
    public static final int EXIT_VALUE = 1;
    private static final ModeSwitchTypeType[] VALUES_ARRAY;
    public static final List<ModeSwitchTypeType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ModeSwitchTypeType[]{ENTRY, EXIT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ModeSwitchTypeType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ModeSwitchTypeType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ModeSwitchTypeType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ModeSwitchTypeType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ModeSwitchTypeType get(int value) {
        switch (value) {
            case 0: {
                return ENTRY;
            }
            case 1: {
                return EXIT;
            }
        }
        return null;
    }

    private ModeSwitchTypeType(int value, String name, String literal) {
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

