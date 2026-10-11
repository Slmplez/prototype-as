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
public enum ListEnum implements Enumerator
{
    NUMBER(0, "number", "NUMBER"),
    UNNUMBER(1, "unnumber", "UNNUMBER");

    public static final int NUMBER_VALUE = 0;
    public static final int UNNUMBER_VALUE = 1;
    private static final ListEnum[] VALUES_ARRAY;
    public static final List<ListEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ListEnum[]{NUMBER, UNNUMBER};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ListEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ListEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ListEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ListEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ListEnum get(int value) {
        switch (value) {
            case 0: {
                return NUMBER;
            }
            case 1: {
                return UNNUMBER;
            }
        }
        return null;
    }

    private ListEnum(int value, String name, String literal) {
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

