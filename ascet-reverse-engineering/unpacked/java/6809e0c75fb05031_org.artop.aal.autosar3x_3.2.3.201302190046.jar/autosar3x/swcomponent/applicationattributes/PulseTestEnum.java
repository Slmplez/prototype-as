/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.swcomponent.applicationattributes;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum PulseTestEnum implements Enumerator
{
    DISABLE(0, "disable", "DISABLE"),
    ENABLE(1, "enable", "ENABLE");

    public static final int DISABLE_VALUE = 0;
    public static final int ENABLE_VALUE = 1;
    private static final PulseTestEnum[] VALUES_ARRAY;
    public static final List<PulseTestEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new PulseTestEnum[]{DISABLE, ENABLE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static PulseTestEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            PulseTestEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static PulseTestEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            PulseTestEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static PulseTestEnum get(int value) {
        switch (value) {
            case 0: {
                return DISABLE;
            }
            case 1: {
                return ENABLE;
            }
        }
        return null;
    }

    private PulseTestEnum(int value, String name, String literal) {
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

