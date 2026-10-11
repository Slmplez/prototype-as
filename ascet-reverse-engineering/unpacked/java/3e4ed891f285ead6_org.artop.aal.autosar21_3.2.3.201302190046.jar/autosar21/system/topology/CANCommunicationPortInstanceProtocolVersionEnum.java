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
public enum CANCommunicationPortInstanceProtocolVersionEnum implements Enumerator
{
    _20A(0, "_20a", "20-A"),
    _20B(1, "_20b", "20-B");

    public static final int _20A_VALUE = 0;
    public static final int _20B_VALUE = 1;
    private static final CANCommunicationPortInstanceProtocolVersionEnum[] VALUES_ARRAY;
    public static final List<CANCommunicationPortInstanceProtocolVersionEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CANCommunicationPortInstanceProtocolVersionEnum[]{_20A, _20B};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CANCommunicationPortInstanceProtocolVersionEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CANCommunicationPortInstanceProtocolVersionEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CANCommunicationPortInstanceProtocolVersionEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CANCommunicationPortInstanceProtocolVersionEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CANCommunicationPortInstanceProtocolVersionEnum get(int value) {
        switch (value) {
            case 0: {
                return _20A;
            }
            case 1: {
                return _20B;
            }
        }
        return null;
    }

    private CANCommunicationPortInstanceProtocolVersionEnum(int value, String name, String literal) {
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

