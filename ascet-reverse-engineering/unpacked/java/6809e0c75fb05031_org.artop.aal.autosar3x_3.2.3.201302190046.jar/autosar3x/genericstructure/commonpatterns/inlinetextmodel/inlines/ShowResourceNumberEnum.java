/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ShowResourceNumberEnum implements Enumerator
{
    NO_SHOW_NUMBER(0, "noShowNumber", "NO-SHOW-NUMBER"),
    SHOW_NUMBER(1, "showNumber", "SHOW-NUMBER");

    public static final int NO_SHOW_NUMBER_VALUE = 0;
    public static final int SHOW_NUMBER_VALUE = 1;
    private static final ShowResourceNumberEnum[] VALUES_ARRAY;
    public static final List<ShowResourceNumberEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ShowResourceNumberEnum[]{NO_SHOW_NUMBER, SHOW_NUMBER};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ShowResourceNumberEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ShowResourceNumberEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ShowResourceNumberEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ShowResourceNumberEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ShowResourceNumberEnum get(int value) {
        switch (value) {
            case 0: {
                return NO_SHOW_NUMBER;
            }
            case 1: {
                return SHOW_NUMBER;
            }
        }
        return null;
    }

    private ShowResourceNumberEnum(int value, String name, String literal) {
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

