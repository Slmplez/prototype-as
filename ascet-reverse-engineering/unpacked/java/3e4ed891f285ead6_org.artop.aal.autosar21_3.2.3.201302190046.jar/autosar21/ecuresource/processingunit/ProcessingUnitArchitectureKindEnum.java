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
public enum ProcessingUnitArchitectureKindEnum implements Enumerator
{
    HARVARD(0, "HARVARD", "HARVARD"),
    VNEUMANN(1, "vNEUMANN", "V-NEUMANN");

    public static final int HARVARD_VALUE = 0;
    public static final int VNEUMANN_VALUE = 1;
    private static final ProcessingUnitArchitectureKindEnum[] VALUES_ARRAY;
    public static final List<ProcessingUnitArchitectureKindEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ProcessingUnitArchitectureKindEnum[]{HARVARD, VNEUMANN};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ProcessingUnitArchitectureKindEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ProcessingUnitArchitectureKindEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ProcessingUnitArchitectureKindEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ProcessingUnitArchitectureKindEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ProcessingUnitArchitectureKindEnum get(int value) {
        switch (value) {
            case 0: {
                return HARVARD;
            }
            case 1: {
                return VNEUMANN;
            }
        }
        return null;
    }

    private ProcessingUnitArchitectureKindEnum(int value, String name, String literal) {
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

