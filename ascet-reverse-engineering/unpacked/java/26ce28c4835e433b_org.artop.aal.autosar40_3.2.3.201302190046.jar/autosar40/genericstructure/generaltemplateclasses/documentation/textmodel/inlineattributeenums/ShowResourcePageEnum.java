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
public enum ShowResourcePageEnum implements Enumerator
{
    NO_SHOW_PAGE(0, "noShowPage", "NO-SHOW-PAGE"),
    SHOW_PAGE(1, "showPage", "SHOW-PAGE");

    public static final int NO_SHOW_PAGE_VALUE = 0;
    public static final int SHOW_PAGE_VALUE = 1;
    private static final ShowResourcePageEnum[] VALUES_ARRAY;
    public static final List<ShowResourcePageEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ShowResourcePageEnum[]{NO_SHOW_PAGE, SHOW_PAGE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ShowResourcePageEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ShowResourcePageEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ShowResourcePageEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ShowResourcePageEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ShowResourcePageEnum get(int value) {
        switch (value) {
            case 0: {
                return NO_SHOW_PAGE;
            }
            case 1: {
                return SHOW_PAGE;
            }
        }
        return null;
    }

    private ShowResourcePageEnum(int value, String name, String literal) {
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

