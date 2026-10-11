/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum TDEventVariableDataPrototypeTypeEnum implements Enumerator
{
    VARIABLE_DATA_PROTOTYPE_SENT(0, "variableDataPrototypeSent", "VARIABLE-DATA-PROTOTYPE-SENT"),
    VARIABLE_DATA_PROTOTYPE_RECEIVED(1, "variableDataPrototypeReceived", "VARIABLE-DATA-PROTOTYPE-RECEIVED");

    public static final int VARIABLE_DATA_PROTOTYPE_SENT_VALUE = 0;
    public static final int VARIABLE_DATA_PROTOTYPE_RECEIVED_VALUE = 1;
    private static final TDEventVariableDataPrototypeTypeEnum[] VALUES_ARRAY;
    public static final List<TDEventVariableDataPrototypeTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TDEventVariableDataPrototypeTypeEnum[]{VARIABLE_DATA_PROTOTYPE_SENT, VARIABLE_DATA_PROTOTYPE_RECEIVED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TDEventVariableDataPrototypeTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventVariableDataPrototypeTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventVariableDataPrototypeTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventVariableDataPrototypeTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventVariableDataPrototypeTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return VARIABLE_DATA_PROTOTYPE_SENT;
            }
            case 1: {
                return VARIABLE_DATA_PROTOTYPE_RECEIVED;
            }
        }
        return null;
    }

    private TDEventVariableDataPrototypeTypeEnum(int value, String name, String literal) {
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

