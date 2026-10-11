/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.swcomponent.implementation;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ImplementationProgrammingLanguageEnum implements Enumerator
{
    C(0, "c", "C"),
    CPP(1, "cpp", "CPP"),
    JAVA(2, "java", "JAVA");

    public static final int C_VALUE = 0;
    public static final int CPP_VALUE = 1;
    public static final int JAVA_VALUE = 2;
    private static final ImplementationProgrammingLanguageEnum[] VALUES_ARRAY;
    public static final List<ImplementationProgrammingLanguageEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ImplementationProgrammingLanguageEnum[]{C, CPP, JAVA};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ImplementationProgrammingLanguageEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ImplementationProgrammingLanguageEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ImplementationProgrammingLanguageEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ImplementationProgrammingLanguageEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ImplementationProgrammingLanguageEnum get(int value) {
        switch (value) {
            case 0: {
                return C;
            }
            case 1: {
                return CPP;
            }
            case 2: {
                return JAVA;
            }
        }
        return null;
    }

    private ImplementationProgrammingLanguageEnum(int value, String name, String literal) {
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

