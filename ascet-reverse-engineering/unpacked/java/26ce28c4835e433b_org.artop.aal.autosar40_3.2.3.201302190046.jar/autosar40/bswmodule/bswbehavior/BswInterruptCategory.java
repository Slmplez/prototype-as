/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.bswmodule.bswbehavior;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum BswInterruptCategory implements Enumerator
{
    CAT1(0, "cat1", "CAT-1"),
    CAT2(1, "cat2", "CAT-2");

    public static final int CAT1_VALUE = 0;
    public static final int CAT2_VALUE = 1;
    private static final BswInterruptCategory[] VALUES_ARRAY;
    public static final List<BswInterruptCategory> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new BswInterruptCategory[]{CAT1, CAT2};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static BswInterruptCategory get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            BswInterruptCategory result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static BswInterruptCategory getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            BswInterruptCategory result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static BswInterruptCategory get(int value) {
        switch (value) {
            case 0: {
                return CAT1;
            }
            case 1: {
                return CAT2;
            }
        }
        return null;
    }

    private BswInterruptCategory(int value, String name, String literal) {
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

