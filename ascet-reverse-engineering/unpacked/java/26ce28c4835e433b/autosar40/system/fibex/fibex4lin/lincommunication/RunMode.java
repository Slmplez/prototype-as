/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum RunMode implements Enumerator
{
    RUN_CONTINUOUS(0, "RunContinuous", "RUN-CONTINUOUS"),
    RUN_ONCE(1, "runOnce", "RUN-ONCE");

    public static final int RUN_CONTINUOUS_VALUE = 0;
    public static final int RUN_ONCE_VALUE = 1;
    private static final RunMode[] VALUES_ARRAY;
    public static final List<RunMode> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new RunMode[]{RUN_CONTINUOUS, RUN_ONCE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static RunMode get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            RunMode result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static RunMode getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            RunMode result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static RunMode get(int value) {
        switch (value) {
            case 0: {
                return RUN_CONTINUOUS;
            }
            case 1: {
                return RUN_ONCE;
            }
        }
        return null;
    }

    private RunMode(int value, String name, String literal) {
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

