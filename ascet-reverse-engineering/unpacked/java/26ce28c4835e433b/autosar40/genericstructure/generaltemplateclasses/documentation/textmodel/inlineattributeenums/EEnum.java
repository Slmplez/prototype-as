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
public enum EEnum implements Enumerator
{
    BOLD(0, "bold", "BOLD"),
    BOLDITALIC(1, "bolditalic", "BOLDITALIC"),
    ITALIC(2, "italic", "ITALIC"),
    PLAIN(3, "plain", "PLAIN");

    public static final int BOLD_VALUE = 0;
    public static final int BOLDITALIC_VALUE = 1;
    public static final int ITALIC_VALUE = 2;
    public static final int PLAIN_VALUE = 3;
    private static final EEnum[] VALUES_ARRAY;
    public static final List<EEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new EEnum[]{BOLD, BOLDITALIC, ITALIC, PLAIN};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static EEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            EEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static EEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            EEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static EEnum get(int value) {
        switch (value) {
            case 0: {
                return BOLD;
            }
            case 1: {
                return BOLDITALIC;
            }
            case 2: {
                return ITALIC;
            }
            case 3: {
                return PLAIN;
            }
        }
        return null;
    }

    private EEnum(int value, String name, String literal) {
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

