/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.serviceprocesstask;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SwServiceImplPolicyEnum implements Enumerator
{
    STANDARD(0, "standard", "STANDARD"),
    INLINE(1, "inline", "INLINE"),
    MACRO(2, "macro", "MACRO"),
    INLINE_CONDITIONAL(3, "inlineConditional", "INLINE-CONDITIONAL");

    public static final int STANDARD_VALUE = 0;
    public static final int INLINE_VALUE = 1;
    public static final int MACRO_VALUE = 2;
    public static final int INLINE_CONDITIONAL_VALUE = 3;
    private static final SwServiceImplPolicyEnum[] VALUES_ARRAY;
    public static final List<SwServiceImplPolicyEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SwServiceImplPolicyEnum[]{STANDARD, INLINE, MACRO, INLINE_CONDITIONAL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SwServiceImplPolicyEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SwServiceImplPolicyEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SwServiceImplPolicyEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SwServiceImplPolicyEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SwServiceImplPolicyEnum get(int value) {
        switch (value) {
            case 0: {
                return STANDARD;
            }
            case 1: {
                return INLINE;
            }
            case 2: {
                return MACRO;
            }
            case 3: {
                return INLINE_CONDITIONAL;
            }
        }
        return null;
    }

    private SwServiceImplPolicyEnum(int value, String name, String literal) {
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

