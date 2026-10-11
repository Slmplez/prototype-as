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
public enum TDEventFrameTypeEnum implements Enumerator
{
    FRAME_QUEUED_FOR_TRANSMISSION(0, "frameQueuedForTransmission", "FRAME-QUEUED-FOR-TRANSMISSION"),
    FRAME_TRANSMITTED_ON_BUS(1, "frameTransmittedOnBus", "FRAME-TRANSMITTED-ON-BUS"),
    FRAME_RECEIVED_BY_IF(2, "frameReceivedByIf", "FRAME-RECEIVED-BY-IF");

    public static final int FRAME_QUEUED_FOR_TRANSMISSION_VALUE = 0;
    public static final int FRAME_TRANSMITTED_ON_BUS_VALUE = 1;
    public static final int FRAME_RECEIVED_BY_IF_VALUE = 2;
    private static final TDEventFrameTypeEnum[] VALUES_ARRAY;
    public static final List<TDEventFrameTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TDEventFrameTypeEnum[]{FRAME_QUEUED_FOR_TRANSMISSION, FRAME_TRANSMITTED_ON_BUS, FRAME_RECEIVED_BY_IF};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TDEventFrameTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventFrameTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventFrameTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventFrameTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventFrameTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return FRAME_QUEUED_FOR_TRANSMISSION;
            }
            case 1: {
                return FRAME_TRANSMITTED_ON_BUS;
            }
            case 2: {
                return FRAME_RECEIVED_BY_IF;
            }
        }
        return null;
    }

    private TDEventFrameTypeEnum(int value, String name, String literal) {
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

