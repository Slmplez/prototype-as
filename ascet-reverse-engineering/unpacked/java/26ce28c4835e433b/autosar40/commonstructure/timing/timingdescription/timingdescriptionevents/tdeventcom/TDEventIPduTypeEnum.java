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
public enum TDEventIPduTypeEnum implements Enumerator
{
    IPDU_SENT_TO_IF(0, "iPduSentToIf", "I-PDU-SENT-TO-IF"),
    IPDU_RECEIVED_BY_COM(1, "iPduReceivedByCOM", "I-PDU-RECEIVED-BY-COM");

    public static final int IPDU_SENT_TO_IF_VALUE = 0;
    public static final int IPDU_RECEIVED_BY_COM_VALUE = 1;
    private static final TDEventIPduTypeEnum[] VALUES_ARRAY;
    public static final List<TDEventIPduTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TDEventIPduTypeEnum[]{IPDU_SENT_TO_IF, IPDU_RECEIVED_BY_COM};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TDEventIPduTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventIPduTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventIPduTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TDEventIPduTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TDEventIPduTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return IPDU_SENT_TO_IF;
            }
            case 1: {
                return IPDU_RECEIVED_BY_COM;
            }
        }
        return null;
    }

    private TDEventIPduTypeEnum(int value, String name, String literal) {
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

