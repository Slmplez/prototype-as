/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.bswmodule.bswinterfaces;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum BswExecutionContext implements Enumerator
{
    INTERRUPT(0, "interrupt", "INTERRUPT"),
    UNSPECIFIED(1, "unspecified", "UNSPECIFIED"),
    TASK(2, "task", "TASK");

    public static final int INTERRUPT_VALUE = 0;
    public static final int UNSPECIFIED_VALUE = 1;
    public static final int TASK_VALUE = 2;
    private static final BswExecutionContext[] VALUES_ARRAY;
    public static final List<BswExecutionContext> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new BswExecutionContext[]{INTERRUPT, UNSPECIFIED, TASK};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static BswExecutionContext get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            BswExecutionContext result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static BswExecutionContext getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            BswExecutionContext result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static BswExecutionContext get(int value) {
        switch (value) {
            case 0: {
                return INTERRUPT;
            }
            case 1: {
                return UNSPECIFIED;
            }
            case 2: {
                return TASK;
            }
        }
        return null;
    }

    private BswExecutionContext(int value, String name, String literal) {
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

