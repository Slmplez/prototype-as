/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.ecuresource.sensoractuator;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum DisplayHwTypeOfCharactersEnum implements Enumerator
{
    NUMERICAL(0, "numerical", "NUMERICAL"),
    ALPHA_NUMERICAL(1, "alphaNumerical", "ALPHA-NUMERICAL"),
    SEMI_GRAPHICAL(2, "semiGraphical", "SEMI-GRAPHICAL"),
    GRAPHICAL(3, "graphical", "GRAPHICAL");

    public static final int NUMERICAL_VALUE = 0;
    public static final int ALPHA_NUMERICAL_VALUE = 1;
    public static final int SEMI_GRAPHICAL_VALUE = 2;
    public static final int GRAPHICAL_VALUE = 3;
    private static final DisplayHwTypeOfCharactersEnum[] VALUES_ARRAY;
    public static final List<DisplayHwTypeOfCharactersEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new DisplayHwTypeOfCharactersEnum[]{NUMERICAL, ALPHA_NUMERICAL, SEMI_GRAPHICAL, GRAPHICAL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static DisplayHwTypeOfCharactersEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DisplayHwTypeOfCharactersEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DisplayHwTypeOfCharactersEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DisplayHwTypeOfCharactersEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DisplayHwTypeOfCharactersEnum get(int value) {
        switch (value) {
            case 0: {
                return NUMERICAL;
            }
            case 1: {
                return ALPHA_NUMERICAL;
            }
            case 2: {
                return SEMI_GRAPHICAL;
            }
            case 3: {
                return GRAPHICAL;
            }
        }
        return null;
    }

    private DisplayHwTypeOfCharactersEnum(int value, String name, String literal) {
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

