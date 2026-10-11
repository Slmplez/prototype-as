/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.swcomponent.portinterface;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ServerArgumentImplPolicyEnum implements Enumerator
{
    USE_ARGUMENT_TYPE(0, "useArgumentType", "USE-ARGUMENT-TYPE"),
    USE_ARRAY_BASE_TYPE(1, "useArrayBaseType", "USE-ARRAY-BASE-TYPE"),
    USE_VOID(2, "useVoid", "USE-VOID");

    public static final int USE_ARGUMENT_TYPE_VALUE = 0;
    public static final int USE_ARRAY_BASE_TYPE_VALUE = 1;
    public static final int USE_VOID_VALUE = 2;
    private static final ServerArgumentImplPolicyEnum[] VALUES_ARRAY;
    public static final List<ServerArgumentImplPolicyEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ServerArgumentImplPolicyEnum[]{USE_ARGUMENT_TYPE, USE_ARRAY_BASE_TYPE, USE_VOID};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ServerArgumentImplPolicyEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ServerArgumentImplPolicyEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ServerArgumentImplPolicyEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ServerArgumentImplPolicyEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ServerArgumentImplPolicyEnum get(int value) {
        switch (value) {
            case 0: {
                return USE_ARGUMENT_TYPE;
            }
            case 1: {
                return USE_ARRAY_BASE_TYPE;
            }
            case 2: {
                return USE_VOID;
            }
        }
        return null;
    }

    private ServerArgumentImplPolicyEnum(int value, String name, String literal) {
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

