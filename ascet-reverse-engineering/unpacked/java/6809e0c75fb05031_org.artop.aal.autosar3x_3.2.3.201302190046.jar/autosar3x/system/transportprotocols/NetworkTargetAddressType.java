/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.system.transportprotocols;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum NetworkTargetAddressType implements Enumerator
{
    PHYSICAL(0, "physical", "PHYSICAL"),
    FUNCTIONAL(1, "functional", "FUNCTIONAL");

    public static final int PHYSICAL_VALUE = 0;
    public static final int FUNCTIONAL_VALUE = 1;
    private static final NetworkTargetAddressType[] VALUES_ARRAY;
    public static final List<NetworkTargetAddressType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new NetworkTargetAddressType[]{PHYSICAL, FUNCTIONAL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static NetworkTargetAddressType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            NetworkTargetAddressType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static NetworkTargetAddressType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            NetworkTargetAddressType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static NetworkTargetAddressType get(int value) {
        switch (value) {
            case 0: {
                return PHYSICAL;
            }
            case 1: {
                return FUNCTIONAL;
            }
        }
        return null;
    }

    private NetworkTargetAddressType(int value, String name, String literal) {
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

