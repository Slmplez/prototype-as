/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.ecuresource.processingunit;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ProcessingUnitAdressingModeEnum implements Enumerator
{
    DIRECT(0, "direct", "DIRECT"),
    INDIRECT(1, "indirect", "INDIRECT"),
    INDEXED(2, "indexed", "INDEXED");

    public static final int DIRECT_VALUE = 0;
    public static final int INDIRECT_VALUE = 1;
    public static final int INDEXED_VALUE = 2;
    private static final ProcessingUnitAdressingModeEnum[] VALUES_ARRAY;
    public static final List<ProcessingUnitAdressingModeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ProcessingUnitAdressingModeEnum[]{DIRECT, INDIRECT, INDEXED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ProcessingUnitAdressingModeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ProcessingUnitAdressingModeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ProcessingUnitAdressingModeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ProcessingUnitAdressingModeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ProcessingUnitAdressingModeEnum get(int value) {
        switch (value) {
            case 0: {
                return DIRECT;
            }
            case 1: {
                return INDIRECT;
            }
            case 2: {
                return INDEXED;
            }
        }
        return null;
    }

    private ProcessingUnitAdressingModeEnum(int value, String name, String literal) {
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

