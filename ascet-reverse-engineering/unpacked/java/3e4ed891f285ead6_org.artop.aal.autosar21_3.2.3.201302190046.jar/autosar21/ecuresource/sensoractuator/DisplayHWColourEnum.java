/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.ecuresource.sensoractuator;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum DisplayHWColourEnum implements Enumerator
{
    COLOUR(0, "colour", "COLOUR"),
    GREY(1, "grey", "GREY"),
    MONO(2, "mono", "MONO");

    public static final int COLOUR_VALUE = 0;
    public static final int GREY_VALUE = 1;
    public static final int MONO_VALUE = 2;
    private static final DisplayHWColourEnum[] VALUES_ARRAY;
    public static final List<DisplayHWColourEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new DisplayHWColourEnum[]{COLOUR, GREY, MONO};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static DisplayHWColourEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DisplayHWColourEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DisplayHWColourEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DisplayHWColourEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DisplayHWColourEnum get(int value) {
        switch (value) {
            case 0: {
                return COLOUR;
            }
            case 1: {
                return GREY;
            }
            case 2: {
                return MONO;
            }
        }
        return null;
    }

    private DisplayHWColourEnum(int value, String name, String literal) {
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

