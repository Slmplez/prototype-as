/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.commonstructure.calibrationparameter;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum CalprmAxisCategoryEnum implements Enumerator
{
    STD_AXIS(0, "stdAxis", "STD-AXIS"),
    FIX_AXIS(1, "fixAXIS", "FIX-AXIS"),
    CURVE_AXIS(2, "curveAxis", "CURVE-AXIS"),
    COM_AXIS(3, "comAxis", "COM-AXIS"),
    RES_AXIS(4, "resAxis", "RES-AXIS");

    public static final int STD_AXIS_VALUE = 0;
    public static final int FIX_AXIS_VALUE = 1;
    public static final int CURVE_AXIS_VALUE = 2;
    public static final int COM_AXIS_VALUE = 3;
    public static final int RES_AXIS_VALUE = 4;
    private static final CalprmAxisCategoryEnum[] VALUES_ARRAY;
    public static final List<CalprmAxisCategoryEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CalprmAxisCategoryEnum[]{STD_AXIS, FIX_AXIS, CURVE_AXIS, COM_AXIS, RES_AXIS};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CalprmAxisCategoryEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CalprmAxisCategoryEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CalprmAxisCategoryEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CalprmAxisCategoryEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CalprmAxisCategoryEnum get(int value) {
        switch (value) {
            case 0: {
                return STD_AXIS;
            }
            case 1: {
                return FIX_AXIS;
            }
            case 2: {
                return CURVE_AXIS;
            }
            case 3: {
                return COM_AXIS;
            }
            case 4: {
                return RES_AXIS;
            }
        }
        return null;
    }

    private CalprmAxisCategoryEnum(int value, String name, String literal) {
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

