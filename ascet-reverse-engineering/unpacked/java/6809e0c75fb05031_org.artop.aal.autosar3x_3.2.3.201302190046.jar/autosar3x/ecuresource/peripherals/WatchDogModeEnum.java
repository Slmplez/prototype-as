/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.ecuresource.peripherals;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum WatchDogModeEnum implements Enumerator
{
    NORMAL(0, "normal", "NORMAL"),
    WINDOWED(1, "windowed", "WINDOWED"),
    DEBUG(2, "debug", "DEBUG");

    public static final int NORMAL_VALUE = 0;
    public static final int WINDOWED_VALUE = 1;
    public static final int DEBUG_VALUE = 2;
    private static final WatchDogModeEnum[] VALUES_ARRAY;
    public static final List<WatchDogModeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new WatchDogModeEnum[]{NORMAL, WINDOWED, DEBUG};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static WatchDogModeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            WatchDogModeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static WatchDogModeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            WatchDogModeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static WatchDogModeEnum get(int value) {
        switch (value) {
            case 0: {
                return NORMAL;
            }
            case 1: {
                return WINDOWED;
            }
            case 2: {
                return DEBUG;
            }
        }
        return null;
    }

    private WatchDogModeEnum(int value, String name, String literal) {
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

