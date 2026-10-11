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
public enum CommunicationDirectionEnum implements Enumerator
{
    INPUT(0, "input", "INPUT"),
    OUTPUT(1, "output", "OUTPUT"),
    INOUT(2, "inout", "INOUT");

    public static final int INPUT_VALUE = 0;
    public static final int OUTPUT_VALUE = 1;
    public static final int INOUT_VALUE = 2;
    private static final CommunicationDirectionEnum[] VALUES_ARRAY;
    public static final List<CommunicationDirectionEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CommunicationDirectionEnum[]{INPUT, OUTPUT, INOUT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CommunicationDirectionEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CommunicationDirectionEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CommunicationDirectionEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CommunicationDirectionEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CommunicationDirectionEnum get(int value) {
        switch (value) {
            case 0: {
                return INPUT;
            }
            case 1: {
                return OUTPUT;
            }
            case 2: {
                return INOUT;
            }
        }
        return null;
    }

    private CommunicationDirectionEnum(int value, String name, String literal) {
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

