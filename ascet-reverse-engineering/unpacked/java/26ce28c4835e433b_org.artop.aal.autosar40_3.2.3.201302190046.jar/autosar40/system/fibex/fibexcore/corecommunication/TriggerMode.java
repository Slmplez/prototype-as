/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum TriggerMode implements Enumerator
{
    NONE(0, "none", "NONE"),
    STATIC_PART_TRIGGER(1, "staticPartTrigger", "STATIC-PART-TRIGGER"),
    DYNAMIC_PART_TRIGGER(2, "dynamicPartTrigger", "DYNAMIC-PART-TRIGGER"),
    STATIC_OR_DYNAMIC_PART_TRIGGER(3, "staticOrDynamicPartTrigger", "STATIC-OR-DYNAMIC-PART-TRIGGER");

    public static final int NONE_VALUE = 0;
    public static final int STATIC_PART_TRIGGER_VALUE = 1;
    public static final int DYNAMIC_PART_TRIGGER_VALUE = 2;
    public static final int STATIC_OR_DYNAMIC_PART_TRIGGER_VALUE = 3;
    private static final TriggerMode[] VALUES_ARRAY;
    public static final List<TriggerMode> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TriggerMode[]{NONE, STATIC_PART_TRIGGER, DYNAMIC_PART_TRIGGER, STATIC_OR_DYNAMIC_PART_TRIGGER};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TriggerMode get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TriggerMode result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TriggerMode getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TriggerMode result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TriggerMode get(int value) {
        switch (value) {
            case 0: {
                return NONE;
            }
            case 1: {
                return STATIC_PART_TRIGGER;
            }
            case 2: {
                return DYNAMIC_PART_TRIGGER;
            }
            case 3: {
                return STATIC_OR_DYNAMIC_PART_TRIGGER;
            }
        }
        return null;
    }

    private TriggerMode(int value, String name, String literal) {
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

