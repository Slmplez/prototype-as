/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ItemLabelPosEnum implements Enumerator
{
    NEWLINE(0, "newline", "NEWLINE"),
    NEWLINE_IF_NECESSARY(1, "newlineIfNecessary", "NEWLINE-IF-NECESSARY"),
    NO_NEWLINE(2, "noNewline", "NO-NEWLINE");

    public static final int NEWLINE_VALUE = 0;
    public static final int NEWLINE_IF_NECESSARY_VALUE = 1;
    public static final int NO_NEWLINE_VALUE = 2;
    private static final ItemLabelPosEnum[] VALUES_ARRAY;
    public static final List<ItemLabelPosEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ItemLabelPosEnum[]{NEWLINE, NEWLINE_IF_NECESSARY, NO_NEWLINE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ItemLabelPosEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ItemLabelPosEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ItemLabelPosEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ItemLabelPosEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ItemLabelPosEnum get(int value) {
        switch (value) {
            case 0: {
                return NEWLINE;
            }
            case 1: {
                return NEWLINE_IF_NECESSARY;
            }
            case 2: {
                return NO_NEWLINE;
            }
        }
        return null;
    }

    private ItemLabelPosEnum(int value, String name, String literal) {
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

