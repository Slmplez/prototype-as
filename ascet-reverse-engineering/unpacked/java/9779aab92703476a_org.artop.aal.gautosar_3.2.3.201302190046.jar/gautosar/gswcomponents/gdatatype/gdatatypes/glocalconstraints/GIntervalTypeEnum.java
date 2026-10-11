/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum GIntervalTypeEnum implements Enumerator
{
    CLOSED(0, "closed", "closed"),
    INFINITE(1, "infinite", "infinite"),
    OPEN(2, "open", "open");

    public static final int CLOSED_VALUE = 0;
    public static final int INFINITE_VALUE = 1;
    public static final int OPEN_VALUE = 2;
    private static final GIntervalTypeEnum[] VALUES_ARRAY;
    public static final List<GIntervalTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new GIntervalTypeEnum[]{CLOSED, INFINITE, OPEN};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static GIntervalTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            GIntervalTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static GIntervalTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            GIntervalTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static GIntervalTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return CLOSED;
            }
            case 1: {
                return INFINITE;
            }
            case 2: {
                return OPEN;
            }
        }
        return null;
    }

    private GIntervalTypeEnum(int value, String name, String literal) {
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

