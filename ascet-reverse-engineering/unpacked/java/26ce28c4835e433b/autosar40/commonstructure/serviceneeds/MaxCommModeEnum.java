/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.serviceneeds;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum MaxCommModeEnum implements Enumerator
{
    NONE(0, "none", "NONE"),
    SILENT(1, "silent", "SILENT"),
    FULL(2, "full", "FULL");

    public static final int NONE_VALUE = 0;
    public static final int SILENT_VALUE = 1;
    public static final int FULL_VALUE = 2;
    private static final MaxCommModeEnum[] VALUES_ARRAY;
    public static final List<MaxCommModeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new MaxCommModeEnum[]{NONE, SILENT, FULL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static MaxCommModeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MaxCommModeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MaxCommModeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            MaxCommModeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static MaxCommModeEnum get(int value) {
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

    private MaxCommModeEnum(int value, String name, String literal) {
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

