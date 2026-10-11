/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.bswmodule.bswinterfaces;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum BswCallType implements Enumerator
{
    REGULAR(0, "regular", "REGULAR"),
    CALLBACK(1, "callback", "CALLBACK"),
    INTERRUPT(2, "interrupt", "INTERRUPT"),
    SCHEDULED(3, "scheduled", "SCHEDULED");

    public static final int REGULAR_VALUE = 0;
    public static final int CALLBACK_VALUE = 1;
    public static final int INTERRUPT_VALUE = 2;
    public static final int SCHEDULED_VALUE = 3;
    private static final BswCallType[] VALUES_ARRAY;
    public static final List<BswCallType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new BswCallType[]{REGULAR, CALLBACK, INTERRUPT, SCHEDULED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static BswCallType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            BswCallType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static BswCallType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            BswCallType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static BswCallType get(int value) {
        switch (value) {
            case 0: {
                return REGULAR;
            }
            case 1: {
                return CALLBACK;
            }
            case 2: {
                return INTERRUPT;
            }
            case 3: {
                return SCHEDULED;
            }
        }
        return null;
    }

    private BswCallType(int value, String name, String literal) {
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

