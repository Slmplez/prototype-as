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

public enum CodeGeneratorT implements Enumerator
{
    PHYSICALEXPERIMENT(0, "PHYSICALEXPERIMENT", "PHYSICAL_EXPERIMENT"),
    QUANTIZEDEXPERIMENT(1, "QUANTIZEDEXPERIMENT", "QUANTIZED_EXPERIMENT"),
    IMPLEMENTATIONEXPERIMENT(2, "IMPLEMENTATIONEXPERIMENT", "IMPLEMENTATION_EXPERIMENT"),
    IMPLEMENTATIONCONTROLLER(3, "IMPLEMENTATIONCONTROLLER", "IMPLEMENTATION_CONTROLLER");

    public static final int PHYSICALEXPERIMENT_VALUE = 0;
    public static final int QUANTIZEDEXPERIMENT_VALUE = 1;
    public static final int IMPLEMENTATIONEXPERIMENT_VALUE = 2;
    public static final int IMPLEMENTATIONCONTROLLER_VALUE = 3;
    private static final CodeGeneratorT[] VALUES_ARRAY;
    public static final List<CodeGeneratorT> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CodeGeneratorT[]{PHYSICALEXPERIMENT, QUANTIZEDEXPERIMENT, IMPLEMENTATIONEXPERIMENT, IMPLEMENTATIONCONTROLLER};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CodeGeneratorT get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CodeGeneratorT result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CodeGeneratorT getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CodeGeneratorT result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CodeGeneratorT get(int value) {
        switch (value) {
            case 0: {
                return PHYSICALEXPERIMENT;
            }
            case 1: {
                return QUANTIZEDEXPERIMENT;
            }
            case 2: {
                return IMPLEMENTATIONEXPERIMENT;
            }
            case 3: {
                return IMPLEMENTATIONCONTROLLER;
            }
        }
        return null;
    }

    private CodeGeneratorT(int value, String name, String literal) {
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

