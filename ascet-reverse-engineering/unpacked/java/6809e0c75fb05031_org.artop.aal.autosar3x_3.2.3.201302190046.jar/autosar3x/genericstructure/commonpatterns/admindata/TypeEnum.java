/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.genericstructure.commonpatterns.admindata;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum TypeEnum implements Enumerator
{
    CONTENT_RELATED(0, "contentRelated", "CONTENT-RELATED"),
    DOC_RELATED(1, "docRelated", "DOC-RELATED");

    public static final int CONTENT_RELATED_VALUE = 0;
    public static final int DOC_RELATED_VALUE = 1;
    private static final TypeEnum[] VALUES_ARRAY;
    public static final List<TypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TypeEnum[]{CONTENT_RELATED, DOC_RELATED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TypeEnum get(int value) {
        switch (value) {
            case 0: {
                return CONTENT_RELATED;
            }
            case 1: {
                return DOC_RELATED;
            }
        }
        return null;
    }

    private TypeEnum(int value, String name, String literal) {
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

