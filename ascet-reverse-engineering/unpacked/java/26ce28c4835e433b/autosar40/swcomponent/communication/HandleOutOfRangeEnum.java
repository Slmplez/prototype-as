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
public enum HandleOutOfRangeEnum implements Enumerator
{
    NONE(0, "none", "NONE"),
    IGNORE(1, "ignore", "IGNORE"),
    SATURATE(2, "saturate", "SATURATE"),
    DEFAULT(3, "default", "DEFAULT"),
    INVALID(4, "invalid", "INVALID"),
    EXTERNAL_REPLACEMENT(5, "externalReplacement", "EXTERNAL-REPLACEMENT");

    public static final int NONE_VALUE = 0;
    public static final int IGNORE_VALUE = 1;
    public static final int SATURATE_VALUE = 2;
    public static final int DEFAULT_VALUE = 3;
    public static final int INVALID_VALUE = 4;
    public static final int EXTERNAL_REPLACEMENT_VALUE = 5;
    private static final HandleOutOfRangeEnum[] VALUES_ARRAY;
    public static final List<HandleOutOfRangeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new HandleOutOfRangeEnum[]{NONE, IGNORE, SATURATE, DEFAULT, INVALID, EXTERNAL_REPLACEMENT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static HandleOutOfRangeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HandleOutOfRangeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HandleOutOfRangeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HandleOutOfRangeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HandleOutOfRangeEnum get(int value) {
        switch (value) {
            case 0: {
                return NONE;
            }
            case 1: {
                return IGNORE;
            }
            case 2: {
                return SATURATE;
            }
            case 3: {
                return DEFAULT;
            }
            case 4: {
                return INVALID;
            }
            case 5: {
                return EXTERNAL_REPLACEMENT;
            }
        }
        return null;
    }

    private HandleOutOfRangeEnum(int value, String name, String literal) {
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

