/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.ecuresource.processingunit;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ProcessingUnitArchitectureTypeEnum implements Enumerator
{
    RISC(0, "RISC", "RISC"),
    CISC(1, "CISC", "CISC"),
    SIMD(2, "SIMD", "SIMD"),
    MIMD(3, "MIMD", "MIMD");

    public static final int RISC_VALUE = 0;
    public static final int CISC_VALUE = 1;
    public static final int SIMD_VALUE = 2;
    public static final int MIMD_VALUE = 3;
    private static final ProcessingUnitArchitectureTypeEnum[] VALUES_ARRAY;
    public static final List<ProcessingUnitArchitectureTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ProcessingUnitArchitectureTypeEnum[]{RISC, CISC, SIMD, MIMD};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ProcessingUnitArchitectureTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ProcessingUnitArchitectureTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ProcessingUnitArchitectureTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ProcessingUnitArchitectureTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ProcessingUnitArchitectureTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return RISC;
            }
            case 1: {
                return CISC;
            }
            case 2: {
                return SIMD;
            }
            case 3: {
                return MIMD;
            }
        }
        return null;
    }

    private ProcessingUnitArchitectureTypeEnum(int value, String name, String literal) {
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

