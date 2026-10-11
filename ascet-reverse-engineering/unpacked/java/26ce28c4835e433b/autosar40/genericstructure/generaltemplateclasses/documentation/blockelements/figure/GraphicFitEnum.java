/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum GraphicFitEnum implements Enumerator
{
    AS_IS(0, "AsIs", "AS-IS"),
    ROTATE90_CW(1, "Rotate90Cw", "ROTATE-90-CW"),
    ROTATE90CCW(2, "Rotate90ccw", "ROTATE-90-CCW"),
    ROTATE180(3, "Rotate180", "ROTATE-180"),
    ROTATE90_CW_FIT_TO_TEXT(4, "Rotate90CwFitToText", "ROTATE-90-CW-FIT-TO-TEXT"),
    ROTATE90_CCW_FIT_TO_TEXT(5, "Rotate90CcwFitToText", "ROTATE-90-CCW-FIT-TO-TEXT"),
    ROTATE180_LIMIT_TO_TEXT(6, "Rotate180LimitToText", "ROTATE-180-LIMIT-TO-TEXT"),
    ROTATE90_CW_LIMIT_TO_TEXT(7, "Rotate90CwLimitToText", "ROTATE-90-CW-LIMIT-TO-TEXT"),
    ROTATE90_CCW_LIMIT_TO_TEXT(8, "Rotate90CcwLimitToText", "ROTATE-90-CCW-LIMIT-TO-TEXT"),
    FIT_TO_TEXT(9, "FitToText", "FIT-TO-TEXT"),
    FIT_TO_PAGE(10, "FitToPage", "FIT-TO-PAGE"),
    LIMIT_TO_TEXT(11, "LimitToText", "LIMIT-TO-TEXT"),
    LIMIT_TO_PAGE(12, "LimitToPage", "LIMIT-TO-PAGE");

    public static final int AS_IS_VALUE = 0;
    public static final int ROTATE90_CW_VALUE = 1;
    public static final int ROTATE90CCW_VALUE = 2;
    public static final int ROTATE180_VALUE = 3;
    public static final int ROTATE90_CW_FIT_TO_TEXT_VALUE = 4;
    public static final int ROTATE90_CCW_FIT_TO_TEXT_VALUE = 5;
    public static final int ROTATE180_LIMIT_TO_TEXT_VALUE = 6;
    public static final int ROTATE90_CW_LIMIT_TO_TEXT_VALUE = 7;
    public static final int ROTATE90_CCW_LIMIT_TO_TEXT_VALUE = 8;
    public static final int FIT_TO_TEXT_VALUE = 9;
    public static final int FIT_TO_PAGE_VALUE = 10;
    public static final int LIMIT_TO_TEXT_VALUE = 11;
    public static final int LIMIT_TO_PAGE_VALUE = 12;
    private static final GraphicFitEnum[] VALUES_ARRAY;
    public static final List<GraphicFitEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new GraphicFitEnum[]{AS_IS, ROTATE90_CW, ROTATE90CCW, ROTATE180, ROTATE90_CW_FIT_TO_TEXT, ROTATE90_CCW_FIT_TO_TEXT, ROTATE180_LIMIT_TO_TEXT, ROTATE90_CW_LIMIT_TO_TEXT, ROTATE90_CCW_LIMIT_TO_TEXT, FIT_TO_TEXT, FIT_TO_PAGE, LIMIT_TO_TEXT, LIMIT_TO_PAGE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static GraphicFitEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            GraphicFitEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static GraphicFitEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            GraphicFitEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static GraphicFitEnum get(int value) {
        switch (value) {
            case 0: {
                return AS_IS;
            }
            case 1: {
                return ROTATE90_CW;
            }
            case 2: {
                return ROTATE90CCW;
            }
            case 3: {
                return ROTATE180;
            }
            case 4: {
                return ROTATE90_CW_FIT_TO_TEXT;
            }
            case 5: {
                return ROTATE90_CCW_FIT_TO_TEXT;
            }
            case 6: {
                return ROTATE180_LIMIT_TO_TEXT;
            }
            case 7: {
                return ROTATE90_CW_LIMIT_TO_TEXT;
            }
            case 8: {
                return ROTATE90_CCW_LIMIT_TO_TEXT;
            }
            case 9: {
                return FIT_TO_TEXT;
            }
            case 10: {
                return FIT_TO_PAGE;
            }
            case 11: {
                return LIMIT_TO_TEXT;
            }
            case 12: {
                return LIMIT_TO_PAGE;
            }
        }
        return null;
    }

    private GraphicFitEnum(int value, String name, String literal) {
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

