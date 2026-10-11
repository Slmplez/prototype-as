/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.genericstructure.generaltemplateclasses.primitivetypes;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ArgumentDirectionEnum implements Enumerator
{
    IN(0, "in", "IN"),
    OUT(1, "out", "OUT"),
    INOUT(2, "inout", "INOUT");

    public static final int IN_VALUE = 0;
    public static final int OUT_VALUE = 1;
    public static final int INOUT_VALUE = 2;
    private static final ArgumentDirectionEnum[] VALUES_ARRAY;
    public static final List<ArgumentDirectionEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ArgumentDirectionEnum[]{IN, OUT, INOUT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ArgumentDirectionEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ArgumentDirectionEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ArgumentDirectionEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ArgumentDirectionEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ArgumentDirectionEnum get(int value) {
        switch (value) {
            case 0: {
                return IN;
            }
            case 1: {
                return OUT;
            }
            case 2: {
                return INOUT;
            }
        }
        return null;
    }

    private ArgumentDirectionEnum(int value, String name, String literal) {
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

