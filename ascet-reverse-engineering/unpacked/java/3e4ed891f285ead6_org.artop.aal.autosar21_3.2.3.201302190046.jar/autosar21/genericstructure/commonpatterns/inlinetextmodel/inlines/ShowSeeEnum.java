/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ShowSeeEnum implements Enumerator
{
    NO_SHOW_SEE(0, "noShowSee", "NO-SHOW-SEE"),
    SHOW_SEE(1, "showSee", "SHOW-SEE");

    public static final int NO_SHOW_SEE_VALUE = 0;
    public static final int SHOW_SEE_VALUE = 1;
    private static final ShowSeeEnum[] VALUES_ARRAY;
    public static final List<ShowSeeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ShowSeeEnum[]{NO_SHOW_SEE, SHOW_SEE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ShowSeeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ShowSeeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ShowSeeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ShowSeeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ShowSeeEnum get(int value) {
        switch (value) {
            case 0: {
                return NO_SHOW_SEE;
            }
            case 1: {
                return SHOW_SEE;
            }
        }
        return null;
    }

    private ShowSeeEnum(int value, String name, String literal) {
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

