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
public enum LINCommunicationPortInstanceProtocolVersionEnum implements Enumerator
{
    _12(0, "_12", "12"),
    _13(1, "_13", "13"),
    _20(2, "_20", "20");

    public static final int _12_VALUE = 0;
    public static final int _13_VALUE = 1;
    public static final int _20_VALUE = 2;
    private static final LINCommunicationPortInstanceProtocolVersionEnum[] VALUES_ARRAY;
    public static final List<LINCommunicationPortInstanceProtocolVersionEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new LINCommunicationPortInstanceProtocolVersionEnum[]{_12, _13, _20};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static LINCommunicationPortInstanceProtocolVersionEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            LINCommunicationPortInstanceProtocolVersionEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static LINCommunicationPortInstanceProtocolVersionEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            LINCommunicationPortInstanceProtocolVersionEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static LINCommunicationPortInstanceProtocolVersionEnum get(int value) {
        switch (value) {
            case 0: {
                return _12;
            }
            case 1: {
                return _13;
            }
            case 2: {
                return _20;
            }
        }
        return null;
    }

    private LINCommunicationPortInstanceProtocolVersionEnum(int value, String name, String literal) {
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

