/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ValignEnum implements Enumerator
{
    BOTTOM(0, "bottom", "BOTTOM"),
    MIDDLE(1, "middle", "MIDDLE"),
    TOP(2, "top", "TOP");

    public static final int BOTTOM_VALUE = 0;
    public static final int MIDDLE_VALUE = 1;
    public static final int TOP_VALUE = 2;
    private static final ValignEnum[] VALUES_ARRAY;
    public static final List<ValignEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ValignEnum[]{BOTTOM, MIDDLE, TOP};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ValignEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ValignEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ValignEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ValignEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ValignEnum get(int value) {
        switch (value) {
            case 0: {
                return BOTTOM;
            }
            case 1: {
                return MIDDLE;
            }
            case 2: {
                return TOP;
            }
        }
        return null;
    }

    private ValignEnum(int value, String name, String literal) {
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

