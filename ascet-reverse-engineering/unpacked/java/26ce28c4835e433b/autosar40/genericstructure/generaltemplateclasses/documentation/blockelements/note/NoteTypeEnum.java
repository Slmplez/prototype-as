/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum NoteTypeEnum implements Enumerator
{
    CAUTION(0, "caution", "CAUTION"),
    EXERCISE(1, "exercise", "EXERCISE"),
    HINT(2, "hint", "HINT"),
    INSTRUCTION(3, "instruction", "INSTRUCTION"),
    OTHER(4, "other", "OTHER"),
    TIP(5, "tip", "TIP"),
    EXAMPLE(6, "example", "EXAMPLE");

    public static final int CAUTION_VALUE = 0;
    public static final int EXERCISE_VALUE = 1;
    public static final int HINT_VALUE = 2;
    public static final int INSTRUCTION_VALUE = 3;
    public static final int OTHER_VALUE = 4;
    public static final int TIP_VALUE = 5;
    public static final int EXAMPLE_VALUE = 6;
    private static final NoteTypeEnum[] VALUES_ARRAY;
    public static final List<NoteTypeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new NoteTypeEnum[]{CAUTION, EXERCISE, HINT, INSTRUCTION, OTHER, TIP, EXAMPLE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static NoteTypeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            NoteTypeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static NoteTypeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            NoteTypeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static NoteTypeEnum get(int value) {
        switch (value) {
            case 0: {
                return CAUTION;
            }
            case 1: {
                return EXERCISE;
            }
            case 2: {
                return HINT;
            }
            case 3: {
                return INSTRUCTION;
            }
            case 4: {
                return OTHER;
            }
            case 5: {
                return TIP;
            }
            case 6: {
                return EXAMPLE;
            }
        }
        return null;
    }

    private NoteTypeEnum(int value, String name, String literal) {
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

