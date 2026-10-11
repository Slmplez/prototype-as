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
public enum DiagPduType implements Enumerator
{
    DIAG_RESPONSE(0, "diagResponse", "DIAG-RESPONSE"),
    DIAG_REQUEST(1, "diagRequest", "DIAG-REQUEST");

    public static final int DIAG_RESPONSE_VALUE = 0;
    public static final int DIAG_REQUEST_VALUE = 1;
    private static final DiagPduType[] VALUES_ARRAY;
    public static final List<DiagPduType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new DiagPduType[]{DIAG_RESPONSE, DIAG_REQUEST};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static DiagPduType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DiagPduType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DiagPduType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DiagPduType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DiagPduType get(int value) {
        switch (value) {
            case 0: {
                return DIAG_RESPONSE;
            }
            case 1: {
                return DIAG_REQUEST;
            }
        }
        return null;
    }

    private DiagPduType(int value, String name, String literal) {
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

