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
public enum TDEventOperationTypeEnum implements Enumerator
{
    OPERATION_CALLED(0, "operationCalled", "OPERATION-CALLED"),
    OPERATION_CALL_RECEIVED(1, "operationCallReceived", "OPERATION-CALL-RECEIVED"),
    OPERATION_CALL_RESPONSE_SENT(2, "operationCallResponseSent", "OPERATION-CALL-RESPONSE-SENT"),
    OPERATION_CALL_RESPONSE_RECEIVED(3, "operationCallResponseReceived", "OPERATION-CALL-RESPONSE-RECEIVED");

    public static final int OPERATION_CALLED_VALUE = 0;
    public static final int OPERATION_CALL_RECEIVED_VALUE = 1;
    public static final int OPERATION_CALL_RESPONSE_SENT_VALUE = 2;
    public static final int OPERATION_CALL_RESPONSE_RECEIVED_VALUE = 3;
    private static final TDEventOperationTypeEnum[] VALUES_ARRAY;
    public static final List<TDEventOperationTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TDEventOperationTypeEnum[]{OPERATION_CALLED, OPERATION_CALL_RECEIVED, OPERATION_CALL_RESPONSE_SENT, OPERATION_CALL_RESPONSE_RECEIVED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TDEventOperationTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventOperationTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventOperationTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventOperationTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventOperationTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return OPERATION_CALLED;
            }
            case 1: {
                return OPERATION_CALL_RECEIVED;
            }
            case 2: {
                return OPERATION_CALL_RESPONSE_SENT;
            }
            case 3: {
                return OPERATION_CALL_RESPONSE_RECEIVED;
            }
        }
        return null;
    }

    private TDEventOperationTypeEnum(int value, String name, String literal) {
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

