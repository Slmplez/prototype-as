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
public enum PhysicalMediumSegmentPhysicalMediumTypeEnum implements Enumerator
{
    OPTICAL(0, "Optical", "OPTICAL"),
    TWISTED_PAIR(1, "TwistedPair", "TWISTED-PAIR"),
    SHIELDED_TWISTED_PAIR(2, "ShieldedTwistedPair", "SHIELDED-TWISTED-PAIR"),
    SINGLEWIRE(3, "Singlewire", "SINGLEWIRE"),
    WIRELESS(4, "Wireless", "WIRELESS");

    public static final int OPTICAL_VALUE = 0;
    public static final int TWISTED_PAIR_VALUE = 1;
    public static final int SHIELDED_TWISTED_PAIR_VALUE = 2;
    public static final int SINGLEWIRE_VALUE = 3;
    public static final int WIRELESS_VALUE = 4;
    private static final PhysicalMediumSegmentPhysicalMediumTypeEnum[] VALUES_ARRAY;
    public static final List<PhysicalMediumSegmentPhysicalMediumTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new PhysicalMediumSegmentPhysicalMediumTypeEnum[]{OPTICAL, TWISTED_PAIR, SHIELDED_TWISTED_PAIR, SINGLEWIRE, WIRELESS};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static PhysicalMediumSegmentPhysicalMediumTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            PhysicalMediumSegmentPhysicalMediumTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static PhysicalMediumSegmentPhysicalMediumTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            PhysicalMediumSegmentPhysicalMediumTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static PhysicalMediumSegmentPhysicalMediumTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return OPTICAL;
            }
            case 1: {
                return TWISTED_PAIR;
            }
            case 2: {
                return SHIELDED_TWISTED_PAIR;
            }
            case 3: {
                return SINGLEWIRE;
            }
            case 4: {
                return WIRELESS;
            }
        }
        return null;
    }

    private PhysicalMediumSegmentPhysicalMediumTypeEnum(int value, String name, String literal) {
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

