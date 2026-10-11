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
public enum HandleOutOfRangeStatusEnum implements Enumerator
{
    SILENT(0, "silent", "SILENT"),
    INDICATE(1, "indicate", "INDICATE");

    public static final int SILENT_VALUE = 0;
    public static final int INDICATE_VALUE = 1;
    private static final HandleOutOfRangeStatusEnum[] VALUES_ARRAY;
    public static final List<HandleOutOfRangeStatusEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new HandleOutOfRangeStatusEnum[]{SILENT, INDICATE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static HandleOutOfRangeStatusEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HandleOutOfRangeStatusEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HandleOutOfRangeStatusEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HandleOutOfRangeStatusEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HandleOutOfRangeStatusEnum get(int value) {
        switch (value) {
            case 0: {
                return SILENT;
            }
            case 1: {
                return INDICATE;
            }
        }
        return null;
    }

    private HandleOutOfRangeStatusEnum(int value, String name, String literal) {
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

