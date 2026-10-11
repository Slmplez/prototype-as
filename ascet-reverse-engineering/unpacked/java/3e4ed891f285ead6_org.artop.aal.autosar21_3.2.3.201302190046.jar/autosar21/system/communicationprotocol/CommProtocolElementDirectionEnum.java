/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.system.communicationprotocol;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum CommProtocolElementDirectionEnum implements Enumerator
{
    S2R(0, "s2r", "S-2-R"),
    R2S(1, "r2s", "R-2-S"),
    C2S(2, "c2s", "C-2-S"),
    S2C(3, "s2c", "S-2-C");

    public static final int S2R_VALUE = 0;
    public static final int R2S_VALUE = 1;
    public static final int C2S_VALUE = 2;
    public static final int S2C_VALUE = 3;
    private static final CommProtocolElementDirectionEnum[] VALUES_ARRAY;
    public static final List<CommProtocolElementDirectionEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CommProtocolElementDirectionEnum[]{S2R, R2S, C2S, S2C};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CommProtocolElementDirectionEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CommProtocolElementDirectionEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CommProtocolElementDirectionEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CommProtocolElementDirectionEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CommProtocolElementDirectionEnum get(int value) {
        switch (value) {
            case 0: {
                return S2R;
            }
            case 1: {
                return R2S;
            }
            case 2: {
                return C2S;
            }
            case 3: {
                return S2C;
            }
        }
        return null;
    }

    private CommProtocolElementDirectionEnum(int value, String name, String literal) {
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

