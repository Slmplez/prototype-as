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
public enum MemoryAccessTypeEnum implements Enumerator
{
    READ(0, "read", "READ"),
    WRITE(1, "write", "WRITE"),
    ERASE(2, "erase", "ERASE"),
    PROGRAM(3, "program", "PROGRAM"),
    RANDOM(4, "random", "RANDOM"),
    SEQUENCE(5, "sequence", "SEQUENCE"),
    BURST(6, "burst", "BURST");

    public static final int READ_VALUE = 0;
    public static final int WRITE_VALUE = 1;
    public static final int ERASE_VALUE = 2;
    public static final int PROGRAM_VALUE = 3;
    public static final int RANDOM_VALUE = 4;
    public static final int SEQUENCE_VALUE = 5;
    public static final int BURST_VALUE = 6;
    private static final MemoryAccessTypeEnum[] VALUES_ARRAY;
    public static final List<MemoryAccessTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new MemoryAccessTypeEnum[]{READ, WRITE, ERASE, PROGRAM, RANDOM, SEQUENCE, BURST};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static MemoryAccessTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MemoryAccessTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MemoryAccessTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MemoryAccessTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MemoryAccessTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return READ;
            }
            case 1: {
                return WRITE;
            }
            case 2: {
                return ERASE;
            }
            case 3: {
                return PROGRAM;
            }
            case 4: {
                return RANDOM;
            }
            case 5: {
                return SEQUENCE;
            }
            case 6: {
                return BURST;
            }
        }
        return null;
    }

    private MemoryAccessTypeEnum(int value, String name, String literal) {
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

