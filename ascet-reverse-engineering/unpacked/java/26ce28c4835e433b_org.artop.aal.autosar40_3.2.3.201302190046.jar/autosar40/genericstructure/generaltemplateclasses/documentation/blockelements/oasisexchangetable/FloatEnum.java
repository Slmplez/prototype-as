/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum FloatEnum implements Enumerator
{
    FLOAT(0, "float", "FLOAT"),
    NO_FLOAT(1, "noFloat", "NO-FLOAT");

    public static final int FLOAT_VALUE = 0;
    public static final int NO_FLOAT_VALUE = 1;
    private static final FloatEnum[] VALUES_ARRAY;
    public static final List<FloatEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new FloatEnum[]{FLOAT, NO_FLOAT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static FloatEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            FloatEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static FloatEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            FloatEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static FloatEnum get(int value) {
        switch (value) {
            case 0: {
                return FLOAT;
            }
            case 1: {
                return NO_FLOAT;
            }
        }
        return null;
    }

    private FloatEnum(int value, String name, String literal) {
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

