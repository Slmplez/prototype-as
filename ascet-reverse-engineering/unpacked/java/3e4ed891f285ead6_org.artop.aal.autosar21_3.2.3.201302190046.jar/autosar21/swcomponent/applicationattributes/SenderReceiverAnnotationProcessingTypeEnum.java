/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.swcomponent.applicationattributes;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SenderReceiverAnnotationProcessingTypeEnum implements Enumerator
{
    NONE(0, "none", "NONE"),
    RAW(1, "raw", "RAW"),
    FILTERED(2, "filtered", "FILTERED");

    public static final int NONE_VALUE = 0;
    public static final int RAW_VALUE = 1;
    public static final int FILTERED_VALUE = 2;
    private static final SenderReceiverAnnotationProcessingTypeEnum[] VALUES_ARRAY;
    public static final List<SenderReceiverAnnotationProcessingTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SenderReceiverAnnotationProcessingTypeEnum[]{NONE, RAW, FILTERED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SenderReceiverAnnotationProcessingTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SenderReceiverAnnotationProcessingTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SenderReceiverAnnotationProcessingTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SenderReceiverAnnotationProcessingTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SenderReceiverAnnotationProcessingTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return NONE;
            }
            case 1: {
                return RAW;
            }
            case 2: {
                return FILTERED;
            }
        }
        return null;
    }

    private SenderReceiverAnnotationProcessingTypeEnum(int value, String name, String literal) {
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

