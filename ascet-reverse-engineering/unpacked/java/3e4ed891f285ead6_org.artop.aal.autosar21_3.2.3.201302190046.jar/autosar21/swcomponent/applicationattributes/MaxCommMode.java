/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.swcomponent.applicationattributes;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum MaxCommMode implements Enumerator
{
    NONE(0, "none", "NONE"),
    SILENT(1, "silent", "SILENT"),
    FULL(2, "full", "FULL");

    public static final int NONE_VALUE = 0;
    public static final int SILENT_VALUE = 1;
    public static final int FULL_VALUE = 2;
    private static final MaxCommMode[] VALUES_ARRAY;
    public static final List<MaxCommMode> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new MaxCommMode[]{NONE, SILENT, FULL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static MaxCommMode get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MaxCommMode result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MaxCommMode getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MaxCommMode result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MaxCommMode get(int value) {
        switch (value) {
            case 0: {
                return NONE;
            }
            case 1: {
                return SILENT;
            }
            case 2: {
                return FULL;
            }
        }
        return null;
    }

    private MaxCommMode(int value, String name, String literal) {
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

