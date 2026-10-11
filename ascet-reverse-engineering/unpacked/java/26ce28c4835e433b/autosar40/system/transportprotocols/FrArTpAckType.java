/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.system.transportprotocols;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum FrArTpAckType implements Enumerator
{
    NO_ACK(0, "noAck", "NO-ACK"),
    ACK_WITH_RT(1, "ackWithRt", "ACK-WITH-RT"),
    ACK_WITHOUT_RT(2, "ackWithoutRt", "ACK-WITHOUT-RT");

    public static final int NO_ACK_VALUE = 0;
    public static final int ACK_WITH_RT_VALUE = 1;
    public static final int ACK_WITHOUT_RT_VALUE = 2;
    private static final FrArTpAckType[] VALUES_ARRAY;
    public static final List<FrArTpAckType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new FrArTpAckType[]{NO_ACK, ACK_WITH_RT, ACK_WITHOUT_RT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static FrArTpAckType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            FrArTpAckType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static FrArTpAckType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            FrArTpAckType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static FrArTpAckType get(int value) {
        switch (value) {
            case 0: {
                return NO_ACK;
            }
            case 1: {
                return ACK_WITH_RT;
            }
            case 2: {
                return ACK_WITHOUT_RT;
            }
        }
        return null;
    }

    private FrArTpAckType(int value, String name, String literal) {
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

