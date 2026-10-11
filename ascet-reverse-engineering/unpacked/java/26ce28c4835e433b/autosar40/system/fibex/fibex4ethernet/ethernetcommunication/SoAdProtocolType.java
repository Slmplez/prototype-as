/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SoAdProtocolType implements Enumerator
{
    UDP(0, "udp", "UDP"),
    TCP(1, "tcp", "TCP");

    public static final int UDP_VALUE = 0;
    public static final int TCP_VALUE = 1;
    private static final SoAdProtocolType[] VALUES_ARRAY;
    public static final List<SoAdProtocolType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SoAdProtocolType[]{UDP, TCP};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SoAdProtocolType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SoAdProtocolType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SoAdProtocolType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SoAdProtocolType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SoAdProtocolType get(int value) {
        switch (value) {
            case 0: {
                return UDP;
            }
            case 1: {
                return TCP;
            }
        }
        return null;
    }

    private SoAdProtocolType(int value, String name, String literal) {
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

