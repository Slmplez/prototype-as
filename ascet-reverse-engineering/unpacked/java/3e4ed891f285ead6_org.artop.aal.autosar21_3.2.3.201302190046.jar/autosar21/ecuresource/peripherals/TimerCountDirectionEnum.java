/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.ecuresource.peripherals;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum TimerCountDirectionEnum implements Enumerator
{
    UP(0, "up", "UP"),
    DOWN(1, "down", "DOWN"),
    SELECTABLE(2, "selectable", "SELECTABLE");

    public static final int UP_VALUE = 0;
    public static final int DOWN_VALUE = 1;
    public static final int SELECTABLE_VALUE = 2;
    private static final TimerCountDirectionEnum[] VALUES_ARRAY;
    public static final List<TimerCountDirectionEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TimerCountDirectionEnum[]{UP, DOWN, SELECTABLE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TimerCountDirectionEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TimerCountDirectionEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TimerCountDirectionEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TimerCountDirectionEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TimerCountDirectionEnum get(int value) {
        switch (value) {
            case 0: {
                return UP;
            }
            case 1: {
                return DOWN;
            }
            case 2: {
                return SELECTABLE;
            }
        }
        return null;
    }

    private TimerCountDirectionEnum(int value, String name, String literal) {
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

