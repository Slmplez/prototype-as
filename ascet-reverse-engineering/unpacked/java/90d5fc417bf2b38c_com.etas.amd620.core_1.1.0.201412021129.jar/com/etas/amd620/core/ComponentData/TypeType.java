/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package com.etas.amd620.core.ComponentData;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

public enum TypeType implements Enumerator
{
    ASAM(0, "ASAM", "ASAM"),
    OBJECTCODE(1, "OBJECTCODE", "OBJECTCODE"),
    COMPONENT(2, "COMPONENT", "COMPONENT"),
    CSOURCE(3, "CSOURCE", "CSOURCE"),
    DATA(4, "DATA", "DATA"),
    EXPERIMENT(5, "EXPERIMENT", "EXPERIMENT"),
    HEADER(6, "HEADER", "HEADER"),
    IMPLEMENTATION(7, "IMPLEMENTATION", "IMPLEMENTATION"),
    SETTING(8, "SETTING", "SETTING"),
    SPECIFICATION(9, "SPECIFICATION", "SPECIFICATION"),
    GRAPHIC(10, "GRAPHIC", "GRAPHIC"),
    FORMULA(11, "FORMULA", "FORMULA"),
    IMPLEMENTATIONTYPE(12, "IMPLEMENTATIONTYPE", "IMPLEMENTATIONTYPE"),
    OSLOGIC(13, "OSLOGIC", "OSLOGIC"),
    GENERIC(14, "GENERIC", "GENERIC"),
    FOLDER(15, "FOLDER", "FOLDER"),
    SIGNAL(16, "SIGNAL", "SIGNAL");

    public static final int ASAM_VALUE = 0;
    public static final int OBJECTCODE_VALUE = 1;
    public static final int COMPONENT_VALUE = 2;
    public static final int CSOURCE_VALUE = 3;
    public static final int DATA_VALUE = 4;
    public static final int EXPERIMENT_VALUE = 5;
    public static final int HEADER_VALUE = 6;
    public static final int IMPLEMENTATION_VALUE = 7;
    public static final int SETTING_VALUE = 8;
    public static final int SPECIFICATION_VALUE = 9;
    public static final int GRAPHIC_VALUE = 10;
    public static final int FORMULA_VALUE = 11;
    public static final int IMPLEMENTATIONTYPE_VALUE = 12;
    public static final int OSLOGIC_VALUE = 13;
    public static final int GENERIC_VALUE = 14;
    public static final int FOLDER_VALUE = 15;
    public static final int SIGNAL_VALUE = 16;
    private static final TypeType[] VALUES_ARRAY;
    public static final List<TypeType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TypeType[]{ASAM, OBJECTCODE, COMPONENT, CSOURCE, DATA, EXPERIMENT, HEADER, IMPLEMENTATION, SETTING, SPECIFICATION, GRAPHIC, FORMULA, IMPLEMENTATIONTYPE, OSLOGIC, GENERIC, FOLDER, SIGNAL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TypeType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TypeType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TypeType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TypeType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TypeType get(int value) {
        switch (value) {
            case 0: {
                return ASAM;
            }
            case 1: {
                return OBJECTCODE;
            }
            case 2: {
                return COMPONENT;
            }
            case 3: {
                return CSOURCE;
            }
            case 4: {
                return DATA;
            }
            case 5: {
                return EXPERIMENT;
            }
            case 6: {
                return HEADER;
            }
            case 7: {
                return IMPLEMENTATION;
            }
            case 8: {
                return SETTING;
            }
            case 9: {
                return SPECIFICATION;
            }
            case 10: {
                return GRAPHIC;
            }
            case 11: {
                return FORMULA;
            }
            case 12: {
                return IMPLEMENTATIONTYPE;
            }
            case 13: {
                return OSLOGIC;
            }
            case 14: {
                return GENERIC;
            }
            case 15: {
                return FOLDER;
            }
            case 16: {
                return SIGNAL;
            }
        }
        return null;
    }

    private TypeType(int value, String name, String literal) {
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

