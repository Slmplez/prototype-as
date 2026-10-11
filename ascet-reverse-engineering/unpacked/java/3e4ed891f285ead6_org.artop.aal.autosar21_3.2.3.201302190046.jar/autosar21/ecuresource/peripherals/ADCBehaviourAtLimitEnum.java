/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.ecuresource.peripherals;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ADCBehaviourAtLimitEnum implements Enumerator
{
    CLIPPING(0, "clipping", "CLIPPING"),
    DEFAULT(1, "default", "DEFAULT"),
    UNDEFINED(2, "undefined", "UNDEFINED"),
    OTHER(3, "other", "OTHER");

    public static final int CLIPPING_VALUE = 0;
    public static final int DEFAULT_VALUE = 1;
    public static final int UNDEFINED_VALUE = 2;
    public static final int OTHER_VALUE = 3;
    private static final ADCBehaviourAtLimitEnum[] VALUES_ARRAY;
    public static final List<ADCBehaviourAtLimitEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ADCBehaviourAtLimitEnum[]{CLIPPING, DEFAULT, UNDEFINED, OTHER};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ADCBehaviourAtLimitEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ADCBehaviourAtLimitEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ADCBehaviourAtLimitEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ADCBehaviourAtLimitEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ADCBehaviourAtLimitEnum get(int value) {
        switch (value) {
            case 0: {
                return CLIPPING;
            }
            case 1: {
                return DEFAULT;
            }
            case 2: {
                return UNDEFINED;
            }
            case 3: {
                return OTHER;
            }
        }
        return null;
    }

    private ADCBehaviourAtLimitEnum(int value, String name, String literal) {
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

