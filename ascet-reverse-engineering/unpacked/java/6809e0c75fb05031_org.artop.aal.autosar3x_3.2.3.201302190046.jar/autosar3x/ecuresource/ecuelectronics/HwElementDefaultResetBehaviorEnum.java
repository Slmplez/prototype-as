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
public enum HwElementDefaultResetBehaviorEnum implements Enumerator
{
    PASSIVE(0, "passive", "PASSIVE"),
    ON(1, "on", "ON"),
    OFF(2, "off", "OFF"),
    OTHER(3, "other", "OTHER");

    public static final int PASSIVE_VALUE = 0;
    public static final int ON_VALUE = 1;
    public static final int OFF_VALUE = 2;
    public static final int OTHER_VALUE = 3;
    private static final HwElementDefaultResetBehaviorEnum[] VALUES_ARRAY;
    public static final List<HwElementDefaultResetBehaviorEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new HwElementDefaultResetBehaviorEnum[]{PASSIVE, ON, OFF, OTHER};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static HwElementDefaultResetBehaviorEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HwElementDefaultResetBehaviorEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HwElementDefaultResetBehaviorEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HwElementDefaultResetBehaviorEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HwElementDefaultResetBehaviorEnum get(int value) {
        switch (value) {
            case 0: {
                return PASSIVE;
            }
            case 1: {
                return ON;
            }
            case 2: {
                return OFF;
            }
            case 3: {
                return OTHER;
            }
        }
        return null;
    }

    private HwElementDefaultResetBehaviorEnum(int value, String name, String literal) {
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

