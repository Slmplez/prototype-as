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
public enum RegisterTypeEnum implements Enumerator
{
    DATA(0, "data", "DATA"),
    ADDRESS(1, "address", "ADDRESS"),
    CONTROL(2, "control", "CONTROL"),
    STATUS(3, "status", "STATUS"),
    STACK_POINTER(4, "stackPointer", "STACK-POINTER"),
    SPECIAL(5, "special", "SPECIAL");

    public static final int DATA_VALUE = 0;
    public static final int ADDRESS_VALUE = 1;
    public static final int CONTROL_VALUE = 2;
    public static final int STATUS_VALUE = 3;
    public static final int STACK_POINTER_VALUE = 4;
    public static final int SPECIAL_VALUE = 5;
    private static final RegisterTypeEnum[] VALUES_ARRAY;
    public static final List<RegisterTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new RegisterTypeEnum[]{DATA, ADDRESS, CONTROL, STATUS, STACK_POINTER, SPECIAL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static RegisterTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            RegisterTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static RegisterTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            RegisterTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static RegisterTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return DATA;
            }
            case 1: {
                return ADDRESS;
            }
            case 2: {
                return CONTROL;
            }
            case 3: {
                return STATUS;
            }
            case 4: {
                return STACK_POINTER;
            }
            case 5: {
                return SPECIAL;
            }
        }
        return null;
    }

    private RegisterTypeEnum(int value, String name, String literal) {
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

