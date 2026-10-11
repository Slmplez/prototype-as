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
public enum BswExecutionContext implements Enumerator
{
    TASK(0, "task", "TASK"),
    INTERRUPT_CAT1(1, "interruptCat1", "INTERRUPT-CAT-1"),
    INTERRUPT_CAT2(2, "interruptCat2", "INTERRUPT-CAT-2"),
    HOOK(3, "hook", "HOOK"),
    UNSPECIFIED(4, "unspecified", "UNSPECIFIED");

    public static final int TASK_VALUE = 0;
    public static final int INTERRUPT_CAT1_VALUE = 1;
    public static final int INTERRUPT_CAT2_VALUE = 2;
    public static final int HOOK_VALUE = 3;
    public static final int UNSPECIFIED_VALUE = 4;
    private static final BswExecutionContext[] VALUES_ARRAY;
    public static final List<BswExecutionContext> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new BswExecutionContext[]{TASK, INTERRUPT_CAT1, INTERRUPT_CAT2, HOOK, UNSPECIFIED};
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
                return TASK;
            }
            case 1: {
                return INTERRUPT_CAT1;
            }
            case 2: {
                return INTERRUPT_CAT2;
            }
            case 3: {
                return HOOK;
            }
            case 4: {
                return UNSPECIFIED;
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

