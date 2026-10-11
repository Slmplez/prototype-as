/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.commonstructure.serviceneeds;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum NvBlockNeedsWritingPriorityEnum implements Enumerator
{
    LOW(0, "low", "LOW"),
    MEDIUM(1, "medium", "MEDIUM"),
    HIGH(2, "high", "HIGH");

    public static final int LOW_VALUE = 0;
    public static final int MEDIUM_VALUE = 1;
    public static final int HIGH_VALUE = 2;
    private static final NvBlockNeedsWritingPriorityEnum[] VALUES_ARRAY;
    public static final List<NvBlockNeedsWritingPriorityEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new NvBlockNeedsWritingPriorityEnum[]{LOW, MEDIUM, HIGH};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static NvBlockNeedsWritingPriorityEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            NvBlockNeedsWritingPriorityEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static NvBlockNeedsWritingPriorityEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            NvBlockNeedsWritingPriorityEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static NvBlockNeedsWritingPriorityEnum get(int value) {
        switch (value) {
            case 0: {
                return LOW;
            }
            case 1: {
                return MEDIUM;
            }
            case 2: {
                return HIGH;
            }
        }
        return null;
    }

    private NvBlockNeedsWritingPriorityEnum(int value, String name, String literal) {
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

