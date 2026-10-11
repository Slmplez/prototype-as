/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.swcomponent.internalbehavior.interrunnablecommunication;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum CommunicationApproachType implements Enumerator
{
    IMPLICIT(0, "implicit", "IMPLICIT"),
    EXPLICIT(1, "explicit", "EXPLICIT");

    public static final int IMPLICIT_VALUE = 0;
    public static final int EXPLICIT_VALUE = 1;
    private static final CommunicationApproachType[] VALUES_ARRAY;
    public static final List<CommunicationApproachType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CommunicationApproachType[]{IMPLICIT, EXPLICIT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CommunicationApproachType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CommunicationApproachType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CommunicationApproachType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CommunicationApproachType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CommunicationApproachType get(int value) {
        switch (value) {
            case 0: {
                return IMPLICIT;
            }
            case 1: {
                return EXPLICIT;
            }
        }
        return null;
    }

    private CommunicationApproachType(int value, String name, String literal) {
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

