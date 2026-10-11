/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.commonstructure.datadefproperties;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SwCalibrationAccessEnum implements Enumerator
{
    READ_ONLY(0, "readOnly", "READ-ONLY"),
    NOT_ACCESSIBLE(1, "notAccessible", "NOT-ACCESSIBLE"),
    READ_WRITE(2, "readWrite", "READ-WRITE");

    public static final int READ_ONLY_VALUE = 0;
    public static final int NOT_ACCESSIBLE_VALUE = 1;
    public static final int READ_WRITE_VALUE = 2;
    private static final SwCalibrationAccessEnum[] VALUES_ARRAY;
    public static final List<SwCalibrationAccessEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SwCalibrationAccessEnum[]{READ_ONLY, NOT_ACCESSIBLE, READ_WRITE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SwCalibrationAccessEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SwCalibrationAccessEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SwCalibrationAccessEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SwCalibrationAccessEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SwCalibrationAccessEnum get(int value) {
        switch (value) {
            case 0: {
                return READ_ONLY;
            }
            case 1: {
                return NOT_ACCESSIBLE;
            }
            case 2: {
                return READ_WRITE;
            }
        }
        return null;
    }

    private SwCalibrationAccessEnum(int value, String name, String literal) {
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

