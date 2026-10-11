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
public enum TpAckType implements Enumerator
{
    NO_ACK(0, "noAck", "NO-ACK"),
    ACK_WITH_RT(1, "ackWithRt", "ACK-WITH-RT");

    public static final int NO_ACK_VALUE = 0;
    public static final int ACK_WITH_RT_VALUE = 1;
    private static final TpAckType[] VALUES_ARRAY;
    public static final List<TpAckType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TpAckType[]{NO_ACK, ACK_WITH_RT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TpAckType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TpAckType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TpAckType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TpAckType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TpAckType get(int value) {
        switch (value) {
            case 0: {
                return NO_ACK;
            }
            case 1: {
                return ACK_WITH_RT;
            }
        }
        return null;
    }

    private TpAckType(int value, String name, String literal) {
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

