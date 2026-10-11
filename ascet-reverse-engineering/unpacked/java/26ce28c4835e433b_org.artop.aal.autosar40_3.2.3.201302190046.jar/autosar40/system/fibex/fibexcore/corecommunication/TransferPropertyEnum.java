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
public enum TransferPropertyEnum implements Enumerator
{
    TRIGGERED(0, "triggered", "TRIGGERED"),
    PENDING(1, "pending", "PENDING"),
    TRIGGERED_ON_CHANGE(2, "triggeredOnChange", "TRIGGERED-ON-CHANGE"),
    TRIGGERED_WITHOUT_REPETITION(3, "triggeredWithoutRepetition", "TRIGGERED-WITHOUT-REPETITION"),
    TRIGGERED_ON_CHANGE_WITHOUT_REPETITION(4, "triggeredOnChangeWithoutRepetition", "TRIGGERED-ON-CHANGE-WITHOUT-REPETITION");

    public static final int TRIGGERED_VALUE = 0;
    public static final int PENDING_VALUE = 1;
    public static final int TRIGGERED_ON_CHANGE_VALUE = 2;
    public static final int TRIGGERED_WITHOUT_REPETITION_VALUE = 3;
    public static final int TRIGGERED_ON_CHANGE_WITHOUT_REPETITION_VALUE = 4;
    private static final TransferPropertyEnum[] VALUES_ARRAY;
    public static final List<TransferPropertyEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TransferPropertyEnum[]{TRIGGERED, PENDING, TRIGGERED_ON_CHANGE, TRIGGERED_WITHOUT_REPETITION, TRIGGERED_ON_CHANGE_WITHOUT_REPETITION};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TransferPropertyEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TransferPropertyEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TransferPropertyEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TransferPropertyEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TransferPropertyEnum get(int value) {
        switch (value) {
            case 0: {
                return TRIGGERED;
            }
            case 1: {
                return PENDING;
            }
            case 2: {
                return TRIGGERED_ON_CHANGE;
            }
            case 3: {
                return TRIGGERED_WITHOUT_REPETITION;
            }
            case 4: {
                return TRIGGERED_ON_CHANGE_WITHOUT_REPETITION;
            }
        }
        return null;
    }

    private TransferPropertyEnum(int value, String name, String literal) {
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

