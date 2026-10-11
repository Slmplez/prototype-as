/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package com.etas.amd620.core.amd620;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

public enum AscetComponentType implements Enumerator
{
    CLASS_BD(0, "Class_BD", "ASCET_Class_BD"),
    CLASS_ESDL(1, "Class_ESDL", "ASCET_Class_ESDL"),
    CLASS_CCODE(2, "Class_CCode", "ASCET_Class_CCode"),
    CLASS_STATEMACHINE(3, "Class_Statemachine", "ASCET_CLass_Statemachine"),
    MODULE_BD(4, "Module_BD", "ASCET_Module_BD"),
    MODULE_ESDL(5, "Module_ESDL", "ASCET_Module_ESDL"),
    MODULE_CCODE(6, "Module_CCode", "ASCET_Module_CCode"),
    PROJECT(7, "Project", "ASCET_Project"),
    ENUM(8, "Enum", "ASCET_Enum"),
    CONTAINER(9, "Container", "ASCET_Container"),
    UNKNOWN(11, "UNKNOWN", "UNKNOWN"),
    RECORD(10, "Record", "ASCET_Record");

    public static final int CLASS_BD_VALUE = 0;
    public static final int CLASS_ESDL_VALUE = 1;
    public static final int CLASS_CCODE_VALUE = 2;
    public static final int CLASS_STATEMACHINE_VALUE = 3;
    public static final int MODULE_BD_VALUE = 4;
    public static final int MODULE_ESDL_VALUE = 5;
    public static final int MODULE_CCODE_VALUE = 6;
    public static final int PROJECT_VALUE = 7;
    public static final int ENUM_VALUE = 8;
    public static final int CONTAINER_VALUE = 9;
    public static final int UNKNOWN_VALUE = 11;
    public static final int RECORD_VALUE = 10;
    private static final AscetComponentType[] VALUES_ARRAY;
    public static final List<AscetComponentType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new AscetComponentType[]{CLASS_BD, CLASS_ESDL, CLASS_CCODE, CLASS_STATEMACHINE, MODULE_BD, MODULE_ESDL, MODULE_CCODE, PROJECT, ENUM, CONTAINER, UNKNOWN, RECORD};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static AscetComponentType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AscetComponentType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AscetComponentType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AscetComponentType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AscetComponentType get(int value) {
        switch (value) {
            case 0: {
                return CLASS_BD;
            }
            case 1: {
                return CLASS_ESDL;
            }
            case 2: {
                return CLASS_CCODE;
            }
            case 3: {
                return CLASS_STATEMACHINE;
            }
            case 4: {
                return MODULE_BD;
            }
            case 5: {
                return MODULE_ESDL;
            }
            case 6: {
                return MODULE_CCODE;
            }
            case 7: {
                return PROJECT;
            }
            case 8: {
                return ENUM;
            }
            case 9: {
                return CONTAINER;
            }
            case 11: {
                return UNKNOWN;
            }
            case 10: {
                return RECORD;
            }
        }
        return null;
    }

    private AscetComponentType(int value, String name, String literal) {
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

