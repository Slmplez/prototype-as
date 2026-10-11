/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.system.fibex.fibex4ttcan.ttcancommunication;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum TtcanTriggerType implements Enumerator
{
    RX_TRIGGER(0, "rxTrigger", "RX-TRIGGER"),
    TX_REF_TRIGGER(1, "txRefTrigger", "TX-REF-TRIGGER"),
    TX_REF_TRIGGER_GAP(2, "txRefTriggerGap", "TX-REF-TRIGGER-GAP"),
    TX_TRIGGER_MERGED(3, "txTriggerMerged", "TX-TRIGGER-MERGED"),
    TX_TRIGGER_SINGLE(4, "txTriggerSingle", "TX-TRIGGER-SINGLE"),
    WATCH_TRIGGER(5, "watchTrigger", "WATCH-TRIGGER"),
    WATCH_TRIGGER_GAP(6, "watchTriggerGap", "WATCH-TRIGGER-GAP");

    public static final int RX_TRIGGER_VALUE = 0;
    public static final int TX_REF_TRIGGER_VALUE = 1;
    public static final int TX_REF_TRIGGER_GAP_VALUE = 2;
    public static final int TX_TRIGGER_MERGED_VALUE = 3;
    public static final int TX_TRIGGER_SINGLE_VALUE = 4;
    public static final int WATCH_TRIGGER_VALUE = 5;
    public static final int WATCH_TRIGGER_GAP_VALUE = 6;
    private static final TtcanTriggerType[] VALUES_ARRAY;
    public static final List<TtcanTriggerType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TtcanTriggerType[]{RX_TRIGGER, TX_REF_TRIGGER, TX_REF_TRIGGER_GAP, TX_TRIGGER_MERGED, TX_TRIGGER_SINGLE, WATCH_TRIGGER, WATCH_TRIGGER_GAP};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TtcanTriggerType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TtcanTriggerType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TtcanTriggerType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TtcanTriggerType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TtcanTriggerType get(int value) {
        switch (value) {
            case 0: {
                return RX_TRIGGER;
            }
            case 1: {
                return TX_REF_TRIGGER;
            }
            case 2: {
                return TX_REF_TRIGGER_GAP;
            }
            case 3: {
                return TX_TRIGGER_MERGED;
            }
            case 4: {
                return TX_TRIGGER_SINGLE;
            }
            case 5: {
                return WATCH_TRIGGER;
            }
            case 6: {
                return WATCH_TRIGGER_GAP;
            }
        }
        return null;
    }

    private TtcanTriggerType(int value, String name, String literal) {
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

