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
public enum MemoryMappedHwPortTypeEnum implements Enumerator
{
    UNSPECIFIED(0, "unspecified", "UNSPECIFIED"),
    DATA(1, "data", "DATA"),
    CONTROL(2, "control", "CONTROL");

    public static final int UNSPECIFIED_VALUE = 0;
    public static final int DATA_VALUE = 1;
    public static final int CONTROL_VALUE = 2;
    private static final MemoryMappedHwPortTypeEnum[] VALUES_ARRAY;
    public static final List<MemoryMappedHwPortTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new MemoryMappedHwPortTypeEnum[]{UNSPECIFIED, DATA, CONTROL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static MemoryMappedHwPortTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MemoryMappedHwPortTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MemoryMappedHwPortTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MemoryMappedHwPortTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MemoryMappedHwPortTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return UNSPECIFIED;
            }
            case 1: {
                return DATA;
            }
            case 2: {
                return CONTROL;
            }
        }
        return null;
    }

    private MemoryMappedHwPortTypeEnum(int value, String name, String literal) {
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

