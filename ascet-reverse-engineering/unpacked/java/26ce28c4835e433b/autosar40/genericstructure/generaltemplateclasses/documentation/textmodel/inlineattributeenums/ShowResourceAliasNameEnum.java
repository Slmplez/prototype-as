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
public enum ShowResourceAliasNameEnum implements Enumerator
{
    SHOW_ALIAS_NAME(0, "showAliasName", "SHOW-ALIAS-NAME"),
    NO_SHOW_ALIAS_NAME(1, "noShowAliasName", "NO-SHOW-ALIAS-NAME");

    public static final int SHOW_ALIAS_NAME_VALUE = 0;
    public static final int NO_SHOW_ALIAS_NAME_VALUE = 1;
    private static final ShowResourceAliasNameEnum[] VALUES_ARRAY;
    public static final List<ShowResourceAliasNameEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ShowResourceAliasNameEnum[]{SHOW_ALIAS_NAME, NO_SHOW_ALIAS_NAME};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ShowResourceAliasNameEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ShowResourceAliasNameEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ShowResourceAliasNameEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ShowResourceAliasNameEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ShowResourceAliasNameEnum get(int value) {
        switch (value) {
            case 0: {
                return SHOW_ALIAS_NAME;
            }
            case 1: {
                return NO_SHOW_ALIAS_NAME;
            }
        }
        return null;
    }

    private ShowResourceAliasNameEnum(int value, String name, String literal) {
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

