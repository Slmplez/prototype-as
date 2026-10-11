/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ChapterEnumBreak implements Enumerator
{
    BREAK(0, "break", "BREAK"),
    NO_BREAK(1, "noBreak", "NO-BREAK");

    public static final int BREAK_VALUE = 0;
    public static final int NO_BREAK_VALUE = 1;
    private static final ChapterEnumBreak[] VALUES_ARRAY;
    public static final List<ChapterEnumBreak> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ChapterEnumBreak[]{BREAK, NO_BREAK};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ChapterEnumBreak get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ChapterEnumBreak result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ChapterEnumBreak getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ChapterEnumBreak result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ChapterEnumBreak get(int value) {
        switch (value) {
            case 0: {
                return BREAK;
            }
            case 1: {
                return NO_BREAK;
            }
        }
        return null;
    }

    private ChapterEnumBreak(int value, String name, String literal) {
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

