/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum EEnumFont implements Enumerator
{
    DEFAULT(0, "default", "DEFAULT"),
    MONO(1, "mono", "MONO");

    public static final int DEFAULT_VALUE = 0;
    public static final int MONO_VALUE = 1;
    private static final EEnumFont[] VALUES_ARRAY;
    public static final List<EEnumFont> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new EEnumFont[]{DEFAULT, MONO};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static EEnumFont get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            EEnumFont result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static EEnumFont getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            EEnumFont result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static EEnumFont get(int value) {
        switch (value) {
            case 0: {
                return DEFAULT;
            }
            case 1: {
                return MONO;
            }
        }
        return null;
    }

    private EEnumFont(int value, String name, String literal) {
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

