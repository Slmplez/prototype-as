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

public enum PrePostHooksType implements Enumerator
{
    NONE(0, "none", "none"),
    DTONLY(1, "dtonly", "dtonly"),
    MONITORING(2, "monitoring", "monitoring");

    public static final int NONE_VALUE = 0;
    public static final int DTONLY_VALUE = 1;
    public static final int MONITORING_VALUE = 2;
    private static final PrePostHooksType[] VALUES_ARRAY;
    public static final List<PrePostHooksType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new PrePostHooksType[]{NONE, DTONLY, MONITORING};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static PrePostHooksType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            PrePostHooksType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static PrePostHooksType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            PrePostHooksType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static PrePostHooksType get(int value) {
        switch (value) {
            case 0: {
                return NONE;
            }
            case 1: {
                return DTONLY;
            }
            case 2: {
                return MONITORING;
            }
        }
        return null;
    }

    private PrePostHooksType(int value, String name, String literal) {
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

