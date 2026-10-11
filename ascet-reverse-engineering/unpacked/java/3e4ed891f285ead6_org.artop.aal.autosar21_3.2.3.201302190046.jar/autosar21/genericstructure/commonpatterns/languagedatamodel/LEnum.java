/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.genericstructure.commonpatterns.languagedatamodel;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum LEnum implements Enumerator
{
    FR(0, "fr", "FR"),
    DE(1, "de", "DE"),
    FOR_ALL(2, "forAll", "FOR-ALL"),
    EN(3, "en", "EN"),
    IT(4, "it", "IT");

    public static final int FR_VALUE = 0;
    public static final int DE_VALUE = 1;
    public static final int FOR_ALL_VALUE = 2;
    public static final int EN_VALUE = 3;
    public static final int IT_VALUE = 4;
    private static final LEnum[] VALUES_ARRAY;
    public static final List<LEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new LEnum[]{FR, DE, FOR_ALL, EN, IT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static LEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            LEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static LEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            LEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static LEnum get(int value) {
        switch (value) {
            case 0: {
                return FR;
            }
            case 1: {
                return DE;
            }
            case 2: {
                return FOR_ALL;
            }
            case 3: {
                return EN;
            }
            case 4: {
                return IT;
            }
        }
        return null;
    }

    private LEnum(int value, String name, String literal) {
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

