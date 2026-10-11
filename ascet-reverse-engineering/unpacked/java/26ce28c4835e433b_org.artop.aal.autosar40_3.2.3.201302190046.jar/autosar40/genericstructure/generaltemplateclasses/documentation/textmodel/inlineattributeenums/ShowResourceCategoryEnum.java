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
public enum ShowResourceCategoryEnum implements Enumerator
{
    NO_SHOW_CATEGORY(0, "noShowCategory", "NO-SHOW-CATEGORY"),
    SHOW_CATEGORY(1, "showCategory", "SHOW-CATEGORY");

    public static final int NO_SHOW_CATEGORY_VALUE = 0;
    public static final int SHOW_CATEGORY_VALUE = 1;
    private static final ShowResourceCategoryEnum[] VALUES_ARRAY;
    public static final List<ShowResourceCategoryEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ShowResourceCategoryEnum[]{NO_SHOW_CATEGORY, SHOW_CATEGORY};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ShowResourceCategoryEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ShowResourceCategoryEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ShowResourceCategoryEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ShowResourceCategoryEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ShowResourceCategoryEnum get(int value) {
        switch (value) {
            case 0: {
                return NO_SHOW_CATEGORY;
            }
            case 1: {
                return SHOW_CATEGORY;
            }
        }
        return null;
    }

    private ShowResourceCategoryEnum(int value, String name, String literal) {
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

