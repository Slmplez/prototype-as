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
public enum CanTpChannelModeType implements Enumerator
{
    HALF_DUPLEX_MODE(0, "halfDuplexMode", "HALF-DUPLEX-MODE"),
    FULL_DUPLEX_MODE(1, "fullDuplexMode", "FULL-DUPLEX-MODE");

    public static final int HALF_DUPLEX_MODE_VALUE = 0;
    public static final int FULL_DUPLEX_MODE_VALUE = 1;
    private static final CanTpChannelModeType[] VALUES_ARRAY;
    public static final List<CanTpChannelModeType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CanTpChannelModeType[]{HALF_DUPLEX_MODE, FULL_DUPLEX_MODE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CanTpChannelModeType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CanTpChannelModeType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CanTpChannelModeType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CanTpChannelModeType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CanTpChannelModeType get(int value) {
        switch (value) {
            case 0: {
                return HALF_DUPLEX_MODE;
            }
            case 1: {
                return FULL_DUPLEX_MODE;
            }
        }
        return null;
    }

    private CanTpChannelModeType(int value, String name, String literal) {
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

