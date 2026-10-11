/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.system.signalpaths;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SwcToSwcOperationArgumentsDirectionEnum implements Enumerator
{
    IN(0, "in", "IN"),
    OUT(1, "out", "OUT");

    public static final int IN_VALUE = 0;
    public static final int OUT_VALUE = 1;
    private static final SwcToSwcOperationArgumentsDirectionEnum[] VALUES_ARRAY;
    public static final List<SwcToSwcOperationArgumentsDirectionEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SwcToSwcOperationArgumentsDirectionEnum[]{IN, OUT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SwcToSwcOperationArgumentsDirectionEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SwcToSwcOperationArgumentsDirectionEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SwcToSwcOperationArgumentsDirectionEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SwcToSwcOperationArgumentsDirectionEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SwcToSwcOperationArgumentsDirectionEnum get(int value) {
        switch (value) {
            case 0: {
                return IN;
            }
            case 1: {
                return OUT;
            }
        }
        return null;
    }

    private SwcToSwcOperationArgumentsDirectionEnum(int value, String name, String literal) {
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

