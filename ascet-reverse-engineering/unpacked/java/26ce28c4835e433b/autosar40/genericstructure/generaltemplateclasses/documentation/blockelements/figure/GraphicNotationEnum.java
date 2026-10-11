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
public enum GraphicNotationEnum implements Enumerator
{
    EPS(0, "eps", "EPS"),
    GIF(1, "gif", "GIF"),
    SVG(2, "svg", "SVG"),
    JPG(3, "jpg", "JPG");

    public static final int EPS_VALUE = 0;
    public static final int GIF_VALUE = 1;
    public static final int SVG_VALUE = 2;
    public static final int JPG_VALUE = 3;
    private static final GraphicNotationEnum[] VALUES_ARRAY;
    public static final List<GraphicNotationEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new GraphicNotationEnum[]{EPS, GIF, SVG, JPG};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static GraphicNotationEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            GraphicNotationEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static GraphicNotationEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            GraphicNotationEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static GraphicNotationEnum get(int value) {
        switch (value) {
            case 0: {
                return EPS;
            }
            case 1: {
                return GIF;
            }
            case 2: {
                return SVG;
            }
            case 3: {
                return JPG;
            }
        }
        return null;
    }

    private GraphicNotationEnum(int value, String name, String literal) {
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

