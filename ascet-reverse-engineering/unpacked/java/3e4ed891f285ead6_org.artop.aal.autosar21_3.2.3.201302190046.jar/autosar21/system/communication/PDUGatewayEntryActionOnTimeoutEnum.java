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
public enum PDUGatewayEntryActionOnTimeoutEnum implements Enumerator
{
    USE_DEFAULT_VALUE(0, "useDefaultValue", "USE-DEFAULT-VALUE"),
    USE_LAST_VALUE(1, "useLastValue", "USE-LAST-VALUE"),
    DONT_SEND(2, "dontSend", "DONT-SEND");

    public static final int USE_DEFAULT_VALUE_VALUE = 0;
    public static final int USE_LAST_VALUE_VALUE = 1;
    public static final int DONT_SEND_VALUE = 2;
    private static final PDUGatewayEntryActionOnTimeoutEnum[] VALUES_ARRAY;
    public static final List<PDUGatewayEntryActionOnTimeoutEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new PDUGatewayEntryActionOnTimeoutEnum[]{USE_DEFAULT_VALUE, USE_LAST_VALUE, DONT_SEND};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static PDUGatewayEntryActionOnTimeoutEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            PDUGatewayEntryActionOnTimeoutEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static PDUGatewayEntryActionOnTimeoutEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            PDUGatewayEntryActionOnTimeoutEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static PDUGatewayEntryActionOnTimeoutEnum get(int value) {
        switch (value) {
            case 0: {
                return USE_DEFAULT_VALUE;
            }
            case 1: {
                return USE_LAST_VALUE;
            }
            case 2: {
                return DONT_SEND;
            }
        }
        return null;
    }

    private PDUGatewayEntryActionOnTimeoutEnum(int value, String name, String literal) {
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

