/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.ecuresource.peripherals;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum CommunicationPeripheralArchitectureEnum implements Enumerator
{
    MASTER(0, "master", "MASTER"),
    SLAVE(1, "slave", "SLAVE"),
    MULTI_MASTER(2, "multiMaster", "MULTI-MASTER");

    public static final int MASTER_VALUE = 0;
    public static final int SLAVE_VALUE = 1;
    public static final int MULTI_MASTER_VALUE = 2;
    private static final CommunicationPeripheralArchitectureEnum[] VALUES_ARRAY;
    public static final List<CommunicationPeripheralArchitectureEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CommunicationPeripheralArchitectureEnum[]{MASTER, SLAVE, MULTI_MASTER};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CommunicationPeripheralArchitectureEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CommunicationPeripheralArchitectureEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CommunicationPeripheralArchitectureEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CommunicationPeripheralArchitectureEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CommunicationPeripheralArchitectureEnum get(int value) {
        switch (value) {
            case 0: {
                return MASTER;
            }
            case 1: {
                return SLAVE;
            }
            case 2: {
                return MULTI_MASTER;
            }
        }
        return null;
    }

    private CommunicationPeripheralArchitectureEnum(int value, String name, String literal) {
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

