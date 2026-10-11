/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.implementationdatatypes;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ArraySizeSemanticsEnum implements Enumerator
{
    FIXED_SIZE(0, "fixedSize", "FIXED-SIZE"),
    VARIABLE_SIZE(1, "variableSize", "VARIABLE-SIZE");

    public static final int FIXED_SIZE_VALUE = 0;
    public static final int VARIABLE_SIZE_VALUE = 1;
    private static final ArraySizeSemanticsEnum[] VALUES_ARRAY;
    public static final List<ArraySizeSemanticsEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ArraySizeSemanticsEnum[]{FIXED_SIZE, VARIABLE_SIZE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ArraySizeSemanticsEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ArraySizeSemanticsEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ArraySizeSemanticsEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ArraySizeSemanticsEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ArraySizeSemanticsEnum get(int value) {
        switch (value) {
            case 0: {
                return FIXED_SIZE;
            }
            case 1: {
                return VARIABLE_SIZE;
            }
        }
        return null;
    }

    private ArraySizeSemanticsEnum(int value, String name, String literal) {
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

