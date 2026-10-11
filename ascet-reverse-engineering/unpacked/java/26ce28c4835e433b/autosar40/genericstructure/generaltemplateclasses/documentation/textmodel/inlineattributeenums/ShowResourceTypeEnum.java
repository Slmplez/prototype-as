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
public enum ShowResourceTypeEnum implements Enumerator
{
    NO_SHOW_TYPE(0, "noShowType", "NO-SHOW-TYPE"),
    SHOW_TYPE(1, "showType", "SHOW-TYPE");

    public static final int NO_SHOW_TYPE_VALUE = 0;
    public static final int SHOW_TYPE_VALUE = 1;
    private static final ShowResourceTypeEnum[] VALUES_ARRAY;
    public static final List<ShowResourceTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ShowResourceTypeEnum[]{NO_SHOW_TYPE, SHOW_TYPE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ShowResourceTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ShowResourceTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ShowResourceTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ShowResourceTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ShowResourceTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return NO_SHOW_TYPE;
            }
            case 1: {
                return SHOW_TYPE;
            }
        }
        return null;
    }

    private ShowResourceTypeEnum(int value, String name, String literal) {
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

