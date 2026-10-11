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
public enum FrameEnum implements Enumerator
{
    ALL(0, "all", "ALL"),
    BOTTOM(1, "bottom", "BOTTOM"),
    NONE(2, "none", "NONE"),
    SIDES(3, "sides", "SIDES"),
    TOP(4, "top", "TOP"),
    TOPBOT(5, "topbot", "TOPBOT");

    public static final int ALL_VALUE = 0;
    public static final int BOTTOM_VALUE = 1;
    public static final int NONE_VALUE = 2;
    public static final int SIDES_VALUE = 3;
    public static final int TOP_VALUE = 4;
    public static final int TOPBOT_VALUE = 5;
    private static final FrameEnum[] VALUES_ARRAY;
    public static final List<FrameEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new FrameEnum[]{ALL, BOTTOM, NONE, SIDES, TOP, TOPBOT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static FrameEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            FrameEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static FrameEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            FrameEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static FrameEnum get(int value) {
        switch (value) {
            case 0: {
                return ALL;
            }
            case 1: {
                return BOTTOM;
            }
            case 2: {
                return NONE;
            }
            case 3: {
                return SIDES;
            }
            case 4: {
                return TOP;
            }
            case 5: {
                return TOPBOT;
            }
        }
        return null;
    }

    private FrameEnum(int value, String name, String literal) {
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

