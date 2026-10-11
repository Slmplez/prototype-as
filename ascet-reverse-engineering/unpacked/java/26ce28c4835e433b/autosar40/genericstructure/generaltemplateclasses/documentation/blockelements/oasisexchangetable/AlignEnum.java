/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum AlignEnum implements Enumerator
{
    CENTER(0, "center", "CENTER"),
    JUSTIFY(1, "justify", "JUSTIFY"),
    LEFT(2, "left", "LEFT"),
    RIGHT(3, "right", "RIGHT");

    public static final int CENTER_VALUE = 0;
    public static final int JUSTIFY_VALUE = 1;
    public static final int LEFT_VALUE = 2;
    public static final int RIGHT_VALUE = 3;
    private static final AlignEnum[] VALUES_ARRAY;
    public static final List<AlignEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new AlignEnum[]{CENTER, JUSTIFY, LEFT, RIGHT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static AlignEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AlignEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AlignEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AlignEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AlignEnum get(int value) {
        switch (value) {
            case 0: {
                return CENTER;
            }
            case 1: {
                return JUSTIFY;
            }
            case 2: {
                return LEFT;
            }
            case 3: {
                return RIGHT;
            }
        }
        return null;
    }

    private AlignEnum(int value, String name, String literal) {
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

