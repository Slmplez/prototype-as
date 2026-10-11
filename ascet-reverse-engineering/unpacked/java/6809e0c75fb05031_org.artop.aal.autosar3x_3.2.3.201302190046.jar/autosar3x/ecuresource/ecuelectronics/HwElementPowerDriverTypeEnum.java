/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.ecuresource.ecuelectronics;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum HwElementPowerDriverTypeEnum implements Enumerator
{
    HS(0, "hs", "HS"),
    LS(1, "ls", "LS"),
    HB(2, "hb", "HB"),
    FB(3, "fb", "FB"),
    OTHER(4, "other", "OTHER");

    public static final int HS_VALUE = 0;
    public static final int LS_VALUE = 1;
    public static final int HB_VALUE = 2;
    public static final int FB_VALUE = 3;
    public static final int OTHER_VALUE = 4;
    private static final HwElementPowerDriverTypeEnum[] VALUES_ARRAY;
    public static final List<HwElementPowerDriverTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new HwElementPowerDriverTypeEnum[]{HS, LS, HB, FB, OTHER};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static HwElementPowerDriverTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HwElementPowerDriverTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HwElementPowerDriverTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HwElementPowerDriverTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HwElementPowerDriverTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return HS;
            }
            case 1: {
                return LS;
            }
            case 2: {
                return HB;
            }
            case 3: {
                return FB;
            }
            case 4: {
                return OTHER;
            }
        }
        return null;
    }

    private HwElementPowerDriverTypeEnum(int value, String name, String literal) {
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

