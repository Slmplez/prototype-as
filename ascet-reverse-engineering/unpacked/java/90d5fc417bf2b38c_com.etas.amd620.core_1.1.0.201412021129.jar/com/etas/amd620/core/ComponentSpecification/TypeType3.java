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

public enum TypeType3 implements Enumerator
{
    ARRAY(0, "Array", "Array"),
    AUTOSAR_ATOMIC_SOFTWARE_COMPONENT(1, "AUTOSARAtomicSoftwareComponent", "AUTOSAR_AtomicSoftwareComponent"),
    MATRIX(2, "Matrix", "Matrix"),
    CHAR_TABLE1_D(3, "CharTable1D", "CharTable1D"),
    CHAR_TABLE2_D(4, "CharTable2D", "CharTable2D"),
    DISTRIBUTION(5, "Distribution", "Distribution"),
    CLASS(6, "Class", "Class"),
    SELF_CLASS(7, "SelfClass", "SelfClass"),
    INTERFACE(8, "Interface", "Interface"),
    MODULE(9, "Module", "Module"),
    GENERIC_COMPONENT(10, "GenericComponent", "GenericComponent"),
    UNDEFINED(11, "Undefined", "Undefined");

    public static final int ARRAY_VALUE = 0;
    public static final int AUTOSAR_ATOMIC_SOFTWARE_COMPONENT_VALUE = 1;
    public static final int MATRIX_VALUE = 2;
    public static final int CHAR_TABLE1_D_VALUE = 3;
    public static final int CHAR_TABLE2_D_VALUE = 4;
    public static final int DISTRIBUTION_VALUE = 5;
    public static final int CLASS_VALUE = 6;
    public static final int SELF_CLASS_VALUE = 7;
    public static final int INTERFACE_VALUE = 8;
    public static final int MODULE_VALUE = 9;
    public static final int GENERIC_COMPONENT_VALUE = 10;
    public static final int UNDEFINED_VALUE = 11;
    private static final TypeType3[] VALUES_ARRAY;
    public static final List<TypeType3> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TypeType3[]{ARRAY, AUTOSAR_ATOMIC_SOFTWARE_COMPONENT, MATRIX, CHAR_TABLE1_D, CHAR_TABLE2_D, DISTRIBUTION, CLASS, SELF_CLASS, INTERFACE, MODULE, GENERIC_COMPONENT, UNDEFINED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TypeType3 get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TypeType3 result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TypeType3 getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TypeType3 result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TypeType3 get(int value) {
        switch (value) {
            case 0: {
                return ARRAY;
            }
            case 1: {
                return AUTOSAR_ATOMIC_SOFTWARE_COMPONENT;
            }
            case 2: {
                return MATRIX;
            }
            case 3: {
                return CHAR_TABLE1_D;
            }
            case 4: {
                return CHAR_TABLE2_D;
            }
            case 5: {
                return DISTRIBUTION;
            }
            case 6: {
                return CLASS;
            }
            case 7: {
                return SELF_CLASS;
            }
            case 8: {
                return INTERFACE;
            }
            case 9: {
                return MODULE;
            }
            case 10: {
                return GENERIC_COMPONENT;
            }
            case 11: {
                return UNDEFINED;
            }
        }
        return null;
    }

    private TypeType3(int value, String name, String literal) {
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

