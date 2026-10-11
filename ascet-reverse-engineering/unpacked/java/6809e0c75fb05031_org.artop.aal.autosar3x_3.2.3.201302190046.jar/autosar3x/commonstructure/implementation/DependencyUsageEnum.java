/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.commonstructure.implementation;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum DependencyUsageEnum implements Enumerator
{
    COMPILE(0, "compile", "COMPILE"),
    LINK(1, "link", "LINK"),
    BUILD(2, "build", "BUILD"),
    EXECUTE(3, "execute", "EXECUTE");

    public static final int COMPILE_VALUE = 0;
    public static final int LINK_VALUE = 1;
    public static final int BUILD_VALUE = 2;
    public static final int EXECUTE_VALUE = 3;
    private static final DependencyUsageEnum[] VALUES_ARRAY;
    public static final List<DependencyUsageEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new DependencyUsageEnum[]{COMPILE, LINK, BUILD, EXECUTE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static DependencyUsageEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DependencyUsageEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DependencyUsageEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DependencyUsageEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DependencyUsageEnum get(int value) {
        switch (value) {
            case 0: {
                return COMPILE;
            }
            case 1: {
                return LINK;
            }
            case 2: {
                return BUILD;
            }
            case 3: {
                return EXECUTE;
            }
        }
        return null;
    }

    private DependencyUsageEnum(int value, String name, String literal) {
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

