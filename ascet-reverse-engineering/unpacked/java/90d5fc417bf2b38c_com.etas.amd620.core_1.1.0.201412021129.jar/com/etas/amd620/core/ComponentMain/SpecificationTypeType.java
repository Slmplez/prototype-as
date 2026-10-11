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

public enum SpecificationTypeType implements Enumerator
{
    UNKNOWN(0, "Unknown", "Unknown"),
    ATOMIC_SOFTWARE_COMPONENT(1, "AtomicSoftwareComponent", "AtomicSoftwareComponent"),
    BLOCK_DIAGRAM(2, "BlockDiagram", "BlockDiagram"),
    BOOLEAN_TABLE(3, "BooleanTable", "BooleanTable"),
    CCODE(4, "CCode", "CCode"),
    CONDITIONAL_TABLE(5, "ConditionalTable", "ConditionalTable"),
    ESDL(6, "ESDL", "ESDL"),
    LAYOUT_ONLY(7, "LayoutOnly", "LayoutOnly"),
    PROJECT(8, "Project", "Project"),
    STATE_MACHINE(9, "StateMachine", "StateMachine"),
    METHOD_INTERFACE(10, "MethodInterface", "MethodInterface");

    public static final int UNKNOWN_VALUE = 0;
    public static final int ATOMIC_SOFTWARE_COMPONENT_VALUE = 1;
    public static final int BLOCK_DIAGRAM_VALUE = 2;
    public static final int BOOLEAN_TABLE_VALUE = 3;
    public static final int CCODE_VALUE = 4;
    public static final int CONDITIONAL_TABLE_VALUE = 5;
    public static final int ESDL_VALUE = 6;
    public static final int LAYOUT_ONLY_VALUE = 7;
    public static final int PROJECT_VALUE = 8;
    public static final int STATE_MACHINE_VALUE = 9;
    public static final int METHOD_INTERFACE_VALUE = 10;
    private static final SpecificationTypeType[] VALUES_ARRAY;
    public static final List<SpecificationTypeType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SpecificationTypeType[]{UNKNOWN, ATOMIC_SOFTWARE_COMPONENT, BLOCK_DIAGRAM, BOOLEAN_TABLE, CCODE, CONDITIONAL_TABLE, ESDL, LAYOUT_ONLY, PROJECT, STATE_MACHINE, METHOD_INTERFACE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SpecificationTypeType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SpecificationTypeType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SpecificationTypeType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SpecificationTypeType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SpecificationTypeType get(int value) {
        switch (value) {
            case 0: {
                return UNKNOWN;
            }
            case 1: {
                return ATOMIC_SOFTWARE_COMPONENT;
            }
            case 2: {
                return BLOCK_DIAGRAM;
            }
            case 3: {
                return BOOLEAN_TABLE;
            }
            case 4: {
                return CCODE;
            }
            case 5: {
                return CONDITIONAL_TABLE;
            }
            case 6: {
                return ESDL;
            }
            case 7: {
                return LAYOUT_ONLY;
            }
            case 8: {
                return PROJECT;
            }
            case 9: {
                return STATE_MACHINE;
            }
            case 10: {
                return METHOD_INTERFACE;
            }
        }
        return null;
    }

    private SpecificationTypeType(int value, String name, String literal) {
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

