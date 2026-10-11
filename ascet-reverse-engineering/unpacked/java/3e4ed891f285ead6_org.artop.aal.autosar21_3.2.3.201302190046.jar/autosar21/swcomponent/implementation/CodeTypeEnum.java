/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.swcomponent.implementation;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum CodeTypeEnum implements Enumerator
{
    SRC(0, "src", "SRC"),
    OBJ(1, "obj", "OBJ");

    public static final int SRC_VALUE = 0;
    public static final int OBJ_VALUE = 1;
    private static final CodeTypeEnum[] VALUES_ARRAY;
    public static final List<CodeTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CodeTypeEnum[]{SRC, OBJ};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CodeTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CodeTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CodeTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CodeTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CodeTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return SRC;
            }
            case 1: {
                return OBJ;
            }
        }
        return null;
    }

    private CodeTypeEnum(int value, String name, String literal) {
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

