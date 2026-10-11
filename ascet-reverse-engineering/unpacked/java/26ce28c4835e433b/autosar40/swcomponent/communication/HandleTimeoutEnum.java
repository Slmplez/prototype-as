/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.swcomponent.communication;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum HandleTimeoutEnum implements Enumerator
{
    REPLACE(0, "replace", "REPLACE"),
    NONE(1, "none", "NONE");

    public static final int REPLACE_VALUE = 0;
    public static final int NONE_VALUE = 1;
    private static final HandleTimeoutEnum[] VALUES_ARRAY;
    public static final List<HandleTimeoutEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new HandleTimeoutEnum[]{REPLACE, NONE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static HandleTimeoutEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HandleTimeoutEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HandleTimeoutEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HandleTimeoutEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HandleTimeoutEnum get(int value) {
        switch (value) {
            case 0: {
                return REPLACE;
            }
            case 1: {
                return NONE;
            }
        }
        return null;
    }

    private HandleTimeoutEnum(int value, String name, String literal) {
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

