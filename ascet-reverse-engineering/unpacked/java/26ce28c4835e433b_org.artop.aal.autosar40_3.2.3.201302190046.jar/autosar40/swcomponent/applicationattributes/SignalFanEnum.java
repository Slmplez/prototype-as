/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.swcomponent.applicationattributes;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SignalFanEnum implements Enumerator
{
    NFOLD(0, "nfold", "NFOLD"),
    SINGLE(1, "single", "SINGLE");

    public static final int NFOLD_VALUE = 0;
    public static final int SINGLE_VALUE = 1;
    private static final SignalFanEnum[] VALUES_ARRAY;
    public static final List<SignalFanEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SignalFanEnum[]{NFOLD, SINGLE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SignalFanEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SignalFanEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SignalFanEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SignalFanEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SignalFanEnum get(int value) {
        switch (value) {
            case 0: {
                return NFOLD;
            }
            case 1: {
                return SINGLE;
            }
        }
        return null;
    }

    private SignalFanEnum(int value, String name, String literal) {
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

