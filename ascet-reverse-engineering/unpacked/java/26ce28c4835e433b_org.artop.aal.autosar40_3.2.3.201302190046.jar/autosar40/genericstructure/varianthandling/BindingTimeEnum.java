/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.genericstructure.varianthandling;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum BindingTimeEnum implements Enumerator
{
    SYSTEM_DESIGN_TIME(0, "SystemDesignTime", "SYSTEM-DESIGN-TIME"),
    CODE_GENERATION_TIME(1, "CodeGenerationTime", "CODE-GENERATION-TIME"),
    PRE_COMPILE_TIME(2, "PreCompileTime", "PRE-COMPILE-TIME"),
    LINK_TIME(3, "LinkTime", "LINK-TIME");

    public static final int SYSTEM_DESIGN_TIME_VALUE = 0;
    public static final int CODE_GENERATION_TIME_VALUE = 1;
    public static final int PRE_COMPILE_TIME_VALUE = 2;
    public static final int LINK_TIME_VALUE = 3;
    private static final BindingTimeEnum[] VALUES_ARRAY;
    public static final List<BindingTimeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new BindingTimeEnum[]{SYSTEM_DESIGN_TIME, CODE_GENERATION_TIME, PRE_COMPILE_TIME, LINK_TIME};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static BindingTimeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            BindingTimeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static BindingTimeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            BindingTimeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static BindingTimeEnum get(int value) {
        switch (value) {
            case 0: {
                return SYSTEM_DESIGN_TIME;
            }
            case 1: {
                return CODE_GENERATION_TIME;
            }
            case 2: {
                return PRE_COMPILE_TIME;
            }
            case 3: {
                return LINK_TIME;
            }
        }
        return null;
    }

    private BindingTimeEnum(int value, String name, String literal) {
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

