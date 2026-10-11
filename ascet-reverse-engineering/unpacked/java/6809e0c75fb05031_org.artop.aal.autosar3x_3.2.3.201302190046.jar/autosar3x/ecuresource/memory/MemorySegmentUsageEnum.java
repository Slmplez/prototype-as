/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.ecuresource.memory;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum MemorySegmentUsageEnum implements Enumerator
{
    CODE(0, "code", "CODE"),
    DATA(1, "data", "DATA"),
    STACK(2, "stack", "STACK"),
    BOOT(3, "boot", "BOOT");

    public static final int CODE_VALUE = 0;
    public static final int DATA_VALUE = 1;
    public static final int STACK_VALUE = 2;
    public static final int BOOT_VALUE = 3;
    private static final MemorySegmentUsageEnum[] VALUES_ARRAY;
    public static final List<MemorySegmentUsageEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new MemorySegmentUsageEnum[]{CODE, DATA, STACK, BOOT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static MemorySegmentUsageEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MemorySegmentUsageEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MemorySegmentUsageEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MemorySegmentUsageEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MemorySegmentUsageEnum get(int value) {
        switch (value) {
            case 0: {
                return CODE;
            }
            case 1: {
                return DATA;
            }
            case 2: {
                return STACK;
            }
            case 3: {
                return BOOT;
            }
        }
        return null;
    }

    private MemorySegmentUsageEnum(int value, String name, String literal) {
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

