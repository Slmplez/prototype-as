/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.ecucparameterdef;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum CalculationLanguage implements Enumerator
{
    INFORMAL(0, "informal", "INFORMAL");

    public static final int INFORMAL_VALUE = 0;
    private static final CalculationLanguage[] VALUES_ARRAY;
    public static final List<CalculationLanguage> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new CalculationLanguage[]{INFORMAL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static CalculationLanguage get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CalculationLanguage result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CalculationLanguage getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            CalculationLanguage result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static CalculationLanguage get(int value) {
        switch (value) {
            case 0: {
                return INFORMAL;
            }
        }
        return null;
    }

    private CalculationLanguage(int value, String name, String literal) {
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

