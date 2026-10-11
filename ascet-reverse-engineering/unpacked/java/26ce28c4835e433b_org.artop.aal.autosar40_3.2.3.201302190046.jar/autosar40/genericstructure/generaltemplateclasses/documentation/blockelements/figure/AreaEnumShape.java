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
public enum AreaEnumShape implements Enumerator
{
    CIRCLE(0, "circle", "CIRCLE"),
    DEFAULT(1, "default", "DEFAULT"),
    POLY(2, "poly", "POLY"),
    RECT(3, "rect", "RECT");

    public static final int CIRCLE_VALUE = 0;
    public static final int DEFAULT_VALUE = 1;
    public static final int POLY_VALUE = 2;
    public static final int RECT_VALUE = 3;
    private static final AreaEnumShape[] VALUES_ARRAY;
    public static final List<AreaEnumShape> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new AreaEnumShape[]{CIRCLE, DEFAULT, POLY, RECT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static AreaEnumShape get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AreaEnumShape result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AreaEnumShape getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            AreaEnumShape result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static AreaEnumShape get(int value) {
        switch (value) {
            case 0: {
                return CIRCLE;
            }
            case 1: {
                return DEFAULT;
            }
            case 2: {
                return POLY;
            }
            case 3: {
                return RECT;
            }
        }
        return null;
    }

    private AreaEnumShape(int value, String name, String literal) {
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

