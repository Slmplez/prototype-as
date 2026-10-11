/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum TDEventISignalTypeEnum implements Enumerator
{
    ISIGNAL_SENT_TO_COM(0, "iSignalSentToCOM", "I-SIGNAL-SENT-TO-COM"),
    ISIGNAL_AVAILABLE_FOR_RTE(1, "iSignalAvailableForRTE", "I-SIGNAL-AVAILABLE-FOR-RTE");

    public static final int ISIGNAL_SENT_TO_COM_VALUE = 0;
    public static final int ISIGNAL_AVAILABLE_FOR_RTE_VALUE = 1;
    private static final TDEventISignalTypeEnum[] VALUES_ARRAY;
    public static final List<TDEventISignalTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TDEventISignalTypeEnum[]{ISIGNAL_SENT_TO_COM, ISIGNAL_AVAILABLE_FOR_RTE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TDEventISignalTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventISignalTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventISignalTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventISignalTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventISignalTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return ISIGNAL_SENT_TO_COM;
            }
            case 1: {
                return ISIGNAL_AVAILABLE_FOR_RTE;
            }
        }
        return null;
    }

    private TDEventISignalTypeEnum(int value, String name, String literal) {
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

