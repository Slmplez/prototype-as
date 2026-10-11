/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.filter;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum DataFilterTypeEnum implements Enumerator
{
    ALWAYS(0, "always", "ALWAYS"),
    MASKED_NEW_EQUALS_X(1, "maskedNewEqualsX", "MASKED-NEW-EQUALS-X"),
    MASKED_NEW_DIFFERS_MASKED_OLD(2, "maskedNewDiffersMaskedOld", "MASKED-NEW-DIFFERS-MASKED-OLD"),
    MASKED_NEW_DIFFERS_X(3, "maskedNewDiffersX", "MASKED-NEW-DIFFERS-X"),
    NEVER(4, "never", "NEVER"),
    NEW_IS_WITHIN(5, "newIsWithin", "NEW-IS-WITHIN"),
    NEW_IS_OUTSIDE(6, "newIsOutside", "NEW-IS-OUTSIDE"),
    ONE_EVERY_N(7, "oneEveryN", "ONE-EVERY-N");

    public static final int ALWAYS_VALUE = 0;
    public static final int MASKED_NEW_EQUALS_X_VALUE = 1;
    public static final int MASKED_NEW_DIFFERS_MASKED_OLD_VALUE = 2;
    public static final int MASKED_NEW_DIFFERS_X_VALUE = 3;
    public static final int NEVER_VALUE = 4;
    public static final int NEW_IS_WITHIN_VALUE = 5;
    public static final int NEW_IS_OUTSIDE_VALUE = 6;
    public static final int ONE_EVERY_N_VALUE = 7;
    private static final DataFilterTypeEnum[] VALUES_ARRAY;
    public static final List<DataFilterTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new DataFilterTypeEnum[]{ALWAYS, MASKED_NEW_EQUALS_X, MASKED_NEW_DIFFERS_MASKED_OLD, MASKED_NEW_DIFFERS_X, NEVER, NEW_IS_WITHIN, NEW_IS_OUTSIDE, ONE_EVERY_N};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static DataFilterTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DataFilterTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DataFilterTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DataFilterTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DataFilterTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return ALWAYS;
            }
            case 1: {
                return MASKED_NEW_EQUALS_X;
            }
            case 2: {
                return MASKED_NEW_DIFFERS_MASKED_OLD;
            }
            case 3: {
                return MASKED_NEW_DIFFERS_X;
            }
            case 4: {
                return NEVER;
            }
            case 5: {
                return NEW_IS_WITHIN;
            }
            case 6: {
                return NEW_IS_OUTSIDE;
            }
            case 7: {
                return ONE_EVERY_N;
            }
        }
        return null;
    }

    private DataFilterTypeEnum(int value, String name, String literal) {
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

