/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.ecuresource.peripherals;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum CommunicationPhysicalMediumEnum implements Enumerator
{
    ELECTRICAL(0, "electrical", "ELECTRICAL"),
    OPTICAL(1, "optical", "OPTICAL"),
    WIRELESS(2, "wireless", "WIRELESS");

    public static final int ELECTRICAL_VALUE = 0;
    public static final int OPTICAL_VALUE = 1;
    public static final int WIRELESS_VALUE = 2;
    private static final CommunicationPhysicalMediumEnum[] VALUES_ARRAY;
    public static final List<CommunicationPhysicalMediumEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CommunicationPhysicalMediumEnum[]{ELECTRICAL, OPTICAL, WIRELESS};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CommunicationPhysicalMediumEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CommunicationPhysicalMediumEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CommunicationPhysicalMediumEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CommunicationPhysicalMediumEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CommunicationPhysicalMediumEnum get(int value) {
        switch (value) {
            case 0: {
                return ELECTRICAL;
            }
            case 1: {
                return OPTICAL;
            }
            case 2: {
                return WIRELESS;
            }
        }
        return null;
    }

    private CommunicationPhysicalMediumEnum(int value, String name, String literal) {
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

