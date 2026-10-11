/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.swcomponent.communication;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum HandleInvalidType implements Enumerator
{
    KEEP(0, "keep", "KEEP"),
    REPLACE(1, "replace", "REPLACE"),
    DONT_INVALIDATE(2, "dontInvalidate", "DONT-INVALIDATE");

    public static final int KEEP_VALUE = 0;
    public static final int REPLACE_VALUE = 1;
    public static final int DONT_INVALIDATE_VALUE = 2;
    private static final HandleInvalidType[] VALUES_ARRAY;
    public static final List<HandleInvalidType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new HandleInvalidType[]{KEEP, REPLACE, DONT_INVALIDATE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static HandleInvalidType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HandleInvalidType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HandleInvalidType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HandleInvalidType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HandleInvalidType get(int value) {
        switch (value) {
            case 0: {
                return KEEP;
            }
            case 1: {
                return REPLACE;
            }
            case 2: {
                return DONT_INVALIDATE;
            }
        }
        return null;
    }

    private HandleInvalidType(int value, String name, String literal) {
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

