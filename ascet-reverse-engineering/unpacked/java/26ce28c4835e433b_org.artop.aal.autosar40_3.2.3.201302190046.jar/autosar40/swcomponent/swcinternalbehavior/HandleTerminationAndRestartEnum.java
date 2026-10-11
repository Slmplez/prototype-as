/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.swcomponent.swcinternalbehavior;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum HandleTerminationAndRestartEnum implements Enumerator
{
    NO_SUPPORT(0, "noSupport", "NO-SUPPORT"),
    CAN_BE_TERMINATED(1, "canBeTerminated", "CAN-BE-TERMINATED"),
    CAN_BE_TERMINATED_AND_RESTARTED(2, "canBeTerminatedAndRestarted", "CAN-BE-TERMINATED-AND-RESTARTED");

    public static final int NO_SUPPORT_VALUE = 0;
    public static final int CAN_BE_TERMINATED_VALUE = 1;
    public static final int CAN_BE_TERMINATED_AND_RESTARTED_VALUE = 2;
    private static final HandleTerminationAndRestartEnum[] VALUES_ARRAY;
    public static final List<HandleTerminationAndRestartEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new HandleTerminationAndRestartEnum[]{NO_SUPPORT, CAN_BE_TERMINATED, CAN_BE_TERMINATED_AND_RESTARTED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static HandleTerminationAndRestartEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HandleTerminationAndRestartEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HandleTerminationAndRestartEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            HandleTerminationAndRestartEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static HandleTerminationAndRestartEnum get(int value) {
        switch (value) {
            case 0: {
                return NO_SUPPORT;
            }
            case 1: {
                return CAN_BE_TERMINATED;
            }
            case 2: {
                return CAN_BE_TERMINATED_AND_RESTARTED;
            }
        }
        return null;
    }

    private HandleTerminationAndRestartEnum(int value, String name, String literal) {
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

