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
public enum ShowContentEnum implements Enumerator
{
    NO_SHOW_CONTENT(0, "noShowContent", "NO-SHOW-CONTENT"),
    SHOW_CONTENT(1, "showContent", "SHOW-CONTENT");

    public static final int NO_SHOW_CONTENT_VALUE = 0;
    public static final int SHOW_CONTENT_VALUE = 1;
    private static final ShowContentEnum[] VALUES_ARRAY;
    public static final List<ShowContentEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ShowContentEnum[]{NO_SHOW_CONTENT, SHOW_CONTENT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ShowContentEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ShowContentEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ShowContentEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ShowContentEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ShowContentEnum get(int value) {
        switch (value) {
            case 0: {
                return NO_SHOW_CONTENT;
            }
            case 1: {
                return SHOW_CONTENT;
            }
        }
        return null;
    }

    private ShowContentEnum(int value, String name, String literal) {
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

