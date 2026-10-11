/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.serviceneeds;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum NvBlockNeedsReliabilityEnum implements Enumerator
{
    NO_PROTECTION(0, "noProtection", "NO-PROTECTION"),
    ERROR_DETECTION(1, "errorDetection", "ERROR-DETECTION"),
    ERROR_CORRECTION(2, "errorCorrection", "ERROR-CORRECTION");

    public static final int NO_PROTECTION_VALUE = 0;
    public static final int ERROR_DETECTION_VALUE = 1;
    public static final int ERROR_CORRECTION_VALUE = 2;
    private static final NvBlockNeedsReliabilityEnum[] VALUES_ARRAY;
    public static final List<NvBlockNeedsReliabilityEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new NvBlockNeedsReliabilityEnum[]{NO_PROTECTION, ERROR_DETECTION, ERROR_CORRECTION};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static NvBlockNeedsReliabilityEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            NvBlockNeedsReliabilityEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static NvBlockNeedsReliabilityEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            NvBlockNeedsReliabilityEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static NvBlockNeedsReliabilityEnum get(int value) {
        switch (value) {
            case 0: {
                return NO_PROTECTION;
            }
            case 1: {
                return ERROR_DETECTION;
            }
            case 2: {
                return ERROR_CORRECTION;
            }
        }
        return null;
    }

    private NvBlockNeedsReliabilityEnum(int value, String name, String literal) {
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

