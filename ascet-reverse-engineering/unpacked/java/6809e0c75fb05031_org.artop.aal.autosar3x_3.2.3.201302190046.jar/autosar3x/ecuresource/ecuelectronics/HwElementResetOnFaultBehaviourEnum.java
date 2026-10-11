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
public enum HwElementResetOnFaultBehaviourEnum implements Enumerator
{
    AUTO(0, "auto", "AUTO"),
    RE_TRIGGER(1, "reTrigger", "RE-TRIGGER"),
    FOLD_BACK(2, "foldBack", "FOLD-BACK");

    public static final int AUTO_VALUE = 0;
    public static final int RE_TRIGGER_VALUE = 1;
    public static final int FOLD_BACK_VALUE = 2;
    private static final HwElementResetOnFaultBehaviourEnum[] VALUES_ARRAY;
    public static final List<HwElementResetOnFaultBehaviourEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new HwElementResetOnFaultBehaviourEnum[]{AUTO, RE_TRIGGER, FOLD_BACK};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static HwElementResetOnFaultBehaviourEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HwElementResetOnFaultBehaviourEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HwElementResetOnFaultBehaviourEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HwElementResetOnFaultBehaviourEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HwElementResetOnFaultBehaviourEnum get(int value) {
        switch (value) {
            case 0: {
                return AUTO;
            }
            case 1: {
                return RE_TRIGGER;
            }
            case 2: {
                return FOLD_BACK;
            }
        }
        return null;
    }

    private HwElementResetOnFaultBehaviourEnum(int value, String name, String literal) {
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

