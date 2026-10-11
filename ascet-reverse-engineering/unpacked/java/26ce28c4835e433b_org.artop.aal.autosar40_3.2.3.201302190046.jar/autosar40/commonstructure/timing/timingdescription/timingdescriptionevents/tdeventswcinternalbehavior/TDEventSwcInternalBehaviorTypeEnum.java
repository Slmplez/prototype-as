/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum TDEventSwcInternalBehaviorTypeEnum implements Enumerator
{
    RUNNABLE_ENTITY_ACTIVATED(0, "runnableEntityActivated", "RUNNABLE-ENTITY-ACTIVATED"),
    RUNNABLE_ENTITY_STARTED(1, "runnableEntityStarted", "RUNNABLE-ENTITY-STARTED"),
    RUNNABLE_ENTITY_TERMINATED(2, "runnableEntityTerminated", "RUNNABLE-ENTITY-TERMINATED");

    public static final int RUNNABLE_ENTITY_ACTIVATED_VALUE = 0;
    public static final int RUNNABLE_ENTITY_STARTED_VALUE = 1;
    public static final int RUNNABLE_ENTITY_TERMINATED_VALUE = 2;
    private static final TDEventSwcInternalBehaviorTypeEnum[] VALUES_ARRAY;
    public static final List<TDEventSwcInternalBehaviorTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TDEventSwcInternalBehaviorTypeEnum[]{RUNNABLE_ENTITY_ACTIVATED, RUNNABLE_ENTITY_STARTED, RUNNABLE_ENTITY_TERMINATED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TDEventSwcInternalBehaviorTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventSwcInternalBehaviorTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventSwcInternalBehaviorTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventSwcInternalBehaviorTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventSwcInternalBehaviorTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return RUNNABLE_ENTITY_ACTIVATED;
            }
            case 1: {
                return RUNNABLE_ENTITY_STARTED;
            }
            case 2: {
                return RUNNABLE_ENTITY_TERMINATED;
            }
        }
        return null;
    }

    private TDEventSwcInternalBehaviorTypeEnum(int value, String name, String literal) {
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

