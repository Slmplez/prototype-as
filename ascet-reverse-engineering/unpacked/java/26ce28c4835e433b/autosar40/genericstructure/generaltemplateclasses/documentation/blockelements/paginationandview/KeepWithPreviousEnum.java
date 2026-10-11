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
public enum KeepWithPreviousEnum implements Enumerator
{
    KEEP(0, "keep", "KEEP"),
    NO_KEEP(1, "noKeep", "NO-KEEP");

    public static final int KEEP_VALUE = 0;
    public static final int NO_KEEP_VALUE = 1;
    private static final KeepWithPreviousEnum[] VALUES_ARRAY;
    public static final List<KeepWithPreviousEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new KeepWithPreviousEnum[]{KEEP, NO_KEEP};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static KeepWithPreviousEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            KeepWithPreviousEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static KeepWithPreviousEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            KeepWithPreviousEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static KeepWithPreviousEnum get(int value) {
        switch (value) {
            case 0: {
                return KEEP;
            }
            case 1: {
                return NO_KEEP;
            }
        }
        return null;
    }

    private KeepWithPreviousEnum(int value, String name, String literal) {
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

