/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.system.communication;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SignalTriggerDataEventConditionEnum implements Enumerator
{
    ON_CHANGE(0, "onChange", "ON-CHANGE"),
    ON_UPDATE(1, "onUpdate", "ON-UPDATE"),
    ON_NOT_DEFAULT(2, "onNotDefault", "ON-NOT-DEFAULT");

    public static final int ON_CHANGE_VALUE = 0;
    public static final int ON_UPDATE_VALUE = 1;
    public static final int ON_NOT_DEFAULT_VALUE = 2;
    private static final SignalTriggerDataEventConditionEnum[] VALUES_ARRAY;
    public static final List<SignalTriggerDataEventConditionEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SignalTriggerDataEventConditionEnum[]{ON_CHANGE, ON_UPDATE, ON_NOT_DEFAULT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SignalTriggerDataEventConditionEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SignalTriggerDataEventConditionEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SignalTriggerDataEventConditionEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SignalTriggerDataEventConditionEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SignalTriggerDataEventConditionEnum get(int value) {
        switch (value) {
            case 0: {
                return ON_CHANGE;
            }
            case 1: {
                return ON_UPDATE;
            }
            case 2: {
                return ON_NOT_DEFAULT;
            }
        }
        return null;
    }

    private SignalTriggerDataEventConditionEnum(int value, String name, String literal) {
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

