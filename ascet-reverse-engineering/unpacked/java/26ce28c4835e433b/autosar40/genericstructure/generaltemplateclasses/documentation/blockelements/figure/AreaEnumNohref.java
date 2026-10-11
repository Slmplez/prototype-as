/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum AreaEnumNohref implements Enumerator
{
    NOHREF(0, "nohref", "NOHREF");

    public static final int NOHREF_VALUE = 0;
    private static final AreaEnumNohref[] VALUES_ARRAY;
    public static final List<AreaEnumNohref> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new AreaEnumNohref[]{NOHREF};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static AreaEnumNohref get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AreaEnumNohref result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AreaEnumNohref getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AreaEnumNohref result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AreaEnumNohref get(int value) {
        switch (value) {
            case 0: {
                return NOHREF;
            }
        }
        return null;
    }

    private AreaEnumNohref(int value, String name, String literal) {
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

