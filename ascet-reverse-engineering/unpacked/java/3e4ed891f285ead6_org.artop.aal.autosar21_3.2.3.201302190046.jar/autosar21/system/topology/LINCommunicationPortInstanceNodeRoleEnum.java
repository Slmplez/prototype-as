/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.system.topology;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum LINCommunicationPortInstanceNodeRoleEnum implements Enumerator
{
    MASTER(0, "Master", "MASTER"),
    SLAVE(1, "Slave", "SLAVE");

    public static final int MASTER_VALUE = 0;
    public static final int SLAVE_VALUE = 1;
    private static final LINCommunicationPortInstanceNodeRoleEnum[] VALUES_ARRAY;
    public static final List<LINCommunicationPortInstanceNodeRoleEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new LINCommunicationPortInstanceNodeRoleEnum[]{MASTER, SLAVE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static LINCommunicationPortInstanceNodeRoleEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            LINCommunicationPortInstanceNodeRoleEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static LINCommunicationPortInstanceNodeRoleEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            LINCommunicationPortInstanceNodeRoleEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static LINCommunicationPortInstanceNodeRoleEnum get(int value) {
        switch (value) {
            case 0: {
                return MASTER;
            }
            case 1: {
                return SLAVE;
            }
        }
        return null;
    }

    private LINCommunicationPortInstanceNodeRoleEnum(int value, String name, String literal) {
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

