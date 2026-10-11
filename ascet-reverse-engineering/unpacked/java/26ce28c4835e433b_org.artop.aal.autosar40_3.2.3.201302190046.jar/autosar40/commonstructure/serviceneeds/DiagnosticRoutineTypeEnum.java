/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.serviceneeds;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum DiagnosticRoutineTypeEnum implements Enumerator
{
    SYNCHRONOUS(0, "synchronous", "SYNCHRONOUS"),
    ASYNCHRONOUS(1, "asynchronous", "ASYNCHRONOUS");

    public static final int SYNCHRONOUS_VALUE = 0;
    public static final int ASYNCHRONOUS_VALUE = 1;
    private static final DiagnosticRoutineTypeEnum[] VALUES_ARRAY;
    public static final List<DiagnosticRoutineTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new DiagnosticRoutineTypeEnum[]{SYNCHRONOUS, ASYNCHRONOUS};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static DiagnosticRoutineTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DiagnosticRoutineTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DiagnosticRoutineTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DiagnosticRoutineTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DiagnosticRoutineTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return SYNCHRONOUS;
            }
            case 1: {
                return ASYNCHRONOUS;
            }
        }
        return null;
    }

    private DiagnosticRoutineTypeEnum(int value, String name, String literal) {
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

