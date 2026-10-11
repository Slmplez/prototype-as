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
public enum ProcessingUnitSpecialOpcodesEnum implements Enumerator
{
    BIT_MANIPULATION(0, "bitManipulation", "BIT-MANIPULATION"),
    MUL(1, "MUL", "MUL"),
    DIV(2, "DIV", "DIV"),
    MAC(3, "MAC", "MAC"),
    FLOAT(4, "Float", "FLOAT");

    public static final int BIT_MANIPULATION_VALUE = 0;
    public static final int MUL_VALUE = 1;
    public static final int DIV_VALUE = 2;
    public static final int MAC_VALUE = 3;
    public static final int FLOAT_VALUE = 4;
    private static final ProcessingUnitSpecialOpcodesEnum[] VALUES_ARRAY;
    public static final List<ProcessingUnitSpecialOpcodesEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ProcessingUnitSpecialOpcodesEnum[]{BIT_MANIPULATION, MUL, DIV, MAC, FLOAT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ProcessingUnitSpecialOpcodesEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ProcessingUnitSpecialOpcodesEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ProcessingUnitSpecialOpcodesEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ProcessingUnitSpecialOpcodesEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ProcessingUnitSpecialOpcodesEnum get(int value) {
        switch (value) {
            case 0: {
                return BIT_MANIPULATION;
            }
            case 1: {
                return MUL;
            }
            case 2: {
                return DIV;
            }
            case 3: {
                return MAC;
            }
            case 4: {
                return FLOAT;
            }
        }
        return null;
    }

    private ProcessingUnitSpecialOpcodesEnum(int value, String name, String literal) {
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

