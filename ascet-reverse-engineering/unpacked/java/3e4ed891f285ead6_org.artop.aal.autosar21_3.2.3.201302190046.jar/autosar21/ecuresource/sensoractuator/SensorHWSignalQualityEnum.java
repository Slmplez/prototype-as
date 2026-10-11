/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.ecuresource.sensoractuator;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SensorHWSignalQualityEnum implements Enumerator
{
    RAW(0, "raw", "RAW"),
    FILTERED(1, "filtered", "FILTERED"),
    DEBOUNCED(2, "debounced", "DEBOUNCED"),
    CODED(3, "coded", "CODED");

    public static final int RAW_VALUE = 0;
    public static final int FILTERED_VALUE = 1;
    public static final int DEBOUNCED_VALUE = 2;
    public static final int CODED_VALUE = 3;
    private static final SensorHWSignalQualityEnum[] VALUES_ARRAY;
    public static final List<SensorHWSignalQualityEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SensorHWSignalQualityEnum[]{RAW, FILTERED, DEBOUNCED, CODED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SensorHWSignalQualityEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SensorHWSignalQualityEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SensorHWSignalQualityEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SensorHWSignalQualityEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SensorHWSignalQualityEnum get(int value) {
        switch (value) {
            case 0: {
                return RAW;
            }
            case 1: {
                return FILTERED;
            }
            case 2: {
                return DEBOUNCED;
            }
            case 3: {
                return CODED;
            }
        }
        return null;
    }

    private SensorHWSignalQualityEnum(int value, String name, String literal) {
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

