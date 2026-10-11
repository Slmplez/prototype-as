/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.swcomponent.applicationattributes;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum FilterDebouncingEnum implements Enumerator
{
    RAW_DATA(0, "rawData", "RAW-DATA"),
    DEBOUNCE_DATA(1, "debounceData", "DEBOUNCE-DATA"),
    WAIT_TIME_DATE(2, "waitTimeDate", "WAIT-TIME-DATE");

    public static final int RAW_DATA_VALUE = 0;
    public static final int DEBOUNCE_DATA_VALUE = 1;
    public static final int WAIT_TIME_DATE_VALUE = 2;
    private static final FilterDebouncingEnum[] VALUES_ARRAY;
    public static final List<FilterDebouncingEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new FilterDebouncingEnum[]{RAW_DATA, DEBOUNCE_DATA, WAIT_TIME_DATE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static FilterDebouncingEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            FilterDebouncingEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static FilterDebouncingEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            FilterDebouncingEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static FilterDebouncingEnum get(int value) {
        switch (value) {
            case 0: {
                return RAW_DATA;
            }
            case 1: {
                return DEBOUNCE_DATA;
            }
            case 2: {
                return WAIT_TIME_DATE;
            }
        }
        return null;
    }

    private FilterDebouncingEnum(int value, String name, String literal) {
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

