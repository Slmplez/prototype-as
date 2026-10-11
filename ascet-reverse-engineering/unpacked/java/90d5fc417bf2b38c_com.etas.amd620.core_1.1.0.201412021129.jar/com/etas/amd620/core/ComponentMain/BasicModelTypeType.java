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

public enum BasicModelTypeType implements Enumerator
{
    DT(0, "dt", "dt"),
    CONT(1, "cont", "cont"),
    SDISC(2, "sdisc", "sdisc"),
    UDISC(3, "udisc", "udisc"),
    LOG(4, "log", "log"),
    ENUMERATION(5, "enumeration", "enumeration"),
    MODEGROUP(6, "modegroup", "modegroup"),
    IMPLEMENTATION_CAST(7, "implementationCast", "implementationCast"),
    RESOURCE(8, "resource", "resource"),
    CLASS(9, "class", "class"),
    MODULE(10, "module", "module"),
    INTERFACE(11, "interface", "interface"),
    RTE_STANDARD_RETURN_TYPE(12, "rteStandardReturnType", "rteStandardReturnType"),
    UNDEFINED(13, "undefined", "undefined");

    public static final int DT_VALUE = 0;
    public static final int CONT_VALUE = 1;
    public static final int SDISC_VALUE = 2;
    public static final int UDISC_VALUE = 3;
    public static final int LOG_VALUE = 4;
    public static final int ENUMERATION_VALUE = 5;
    public static final int MODEGROUP_VALUE = 6;
    public static final int IMPLEMENTATION_CAST_VALUE = 7;
    public static final int RESOURCE_VALUE = 8;
    public static final int CLASS_VALUE = 9;
    public static final int MODULE_VALUE = 10;
    public static final int INTERFACE_VALUE = 11;
    public static final int RTE_STANDARD_RETURN_TYPE_VALUE = 12;
    public static final int UNDEFINED_VALUE = 13;
    private static final BasicModelTypeType[] VALUES_ARRAY;
    public static final List<BasicModelTypeType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new BasicModelTypeType[]{DT, CONT, SDISC, UDISC, LOG, ENUMERATION, MODEGROUP, IMPLEMENTATION_CAST, RESOURCE, CLASS, MODULE, INTERFACE, RTE_STANDARD_RETURN_TYPE, UNDEFINED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static BasicModelTypeType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            BasicModelTypeType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static BasicModelTypeType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            BasicModelTypeType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static BasicModelTypeType get(int value) {
        switch (value) {
            case 0: {
                return DT;
            }
            case 1: {
                return CONT;
            }
            case 2: {
                return SDISC;
            }
            case 3: {
                return UDISC;
            }
            case 4: {
                return LOG;
            }
            case 5: {
                return ENUMERATION;
            }
            case 6: {
                return MODEGROUP;
            }
            case 7: {
                return IMPLEMENTATION_CAST;
            }
            case 8: {
                return RESOURCE;
            }
            case 9: {
                return CLASS;
            }
            case 10: {
                return MODULE;
            }
            case 11: {
                return INTERFACE;
            }
            case 12: {
                return RTE_STANDARD_RETURN_TYPE;
            }
            case 13: {
                return UNDEFINED;
            }
        }
        return null;
    }

    private BasicModelTypeType(int value, String name, String literal) {
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

