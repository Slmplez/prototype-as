/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.datadefproperties;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SwVariableAccessImplPolicyEnum implements Enumerator
{
    OPTIMIZED(0, "optimized", "OPTIMIZED"),
    SELECTABLE(1, "selectable", "SELECTABLE"),
    DIRECT(2, "direct", "DIRECT");

    public static final int OPTIMIZED_VALUE = 0;
    public static final int SELECTABLE_VALUE = 1;
    public static final int DIRECT_VALUE = 2;
    private static final SwVariableAccessImplPolicyEnum[] VALUES_ARRAY;
    public static final List<SwVariableAccessImplPolicyEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SwVariableAccessImplPolicyEnum[]{OPTIMIZED, SELECTABLE, DIRECT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SwVariableAccessImplPolicyEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SwVariableAccessImplPolicyEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SwVariableAccessImplPolicyEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SwVariableAccessImplPolicyEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SwVariableAccessImplPolicyEnum get(int value) {
        switch (value) {
            case 0: {
                return OPTIMIZED;
            }
            case 1: {
                return SELECTABLE;
            }
            case 2: {
                return DIRECT;
            }
        }
        return null;
    }

    private SwVariableAccessImplPolicyEnum(int value, String name, String literal) {
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

