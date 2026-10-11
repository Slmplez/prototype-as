/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum TtEnum implements Enumerator
{
    CODE(0, "code", "CODE"),
    CONTROL_ELEMENT(1, "controlElement", "CONTROL-ELEMENT"),
    MATERIAL(2, "material", "MATERIAL"),
    ORGANISATION(3, "organisation", "ORGANISATION"),
    OTHER(4, "other", "OTHER"),
    PRM(5, "prm", "PRM"),
    PRODUCT(6, "product", "PRODUCT"),
    SGML_ATTRIBUTE(7, "sgmlAttribute", "SGML-ATTRIBUTE"),
    SGMLTAG(8, "sgmltag", "SGMLTAG"),
    STATE(9, "state", "STATE"),
    TOOL(10, "tool", "TOOL"),
    VARIABLE(11, "variable", "VARIABLE");

    public static final int CODE_VALUE = 0;
    public static final int CONTROL_ELEMENT_VALUE = 1;
    public static final int MATERIAL_VALUE = 2;
    public static final int ORGANISATION_VALUE = 3;
    public static final int OTHER_VALUE = 4;
    public static final int PRM_VALUE = 5;
    public static final int PRODUCT_VALUE = 6;
    public static final int SGML_ATTRIBUTE_VALUE = 7;
    public static final int SGMLTAG_VALUE = 8;
    public static final int STATE_VALUE = 9;
    public static final int TOOL_VALUE = 10;
    public static final int VARIABLE_VALUE = 11;
    private static final TtEnum[] VALUES_ARRAY;
    public static final List<TtEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TtEnum[]{CODE, CONTROL_ELEMENT, MATERIAL, ORGANISATION, OTHER, PRM, PRODUCT, SGML_ATTRIBUTE, SGMLTAG, STATE, TOOL, VARIABLE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static TtEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TtEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TtEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            TtEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static TtEnum get(int value) {
        switch (value) {
            case 0: {
                return CODE;
            }
            case 1: {
                return CONTROL_ELEMENT;
            }
            case 2: {
                return MATERIAL;
            }
            case 3: {
                return ORGANISATION;
            }
            case 4: {
                return OTHER;
            }
            case 5: {
                return PRM;
            }
            case 6: {
                return PRODUCT;
            }
            case 7: {
                return SGML_ATTRIBUTE;
            }
            case 8: {
                return SGMLTAG;
            }
            case 9: {
                return STATE;
            }
            case 10: {
                return TOOL;
            }
            case 11: {
                return VARIABLE;
            }
        }
        return null;
    }

    private TtEnum(int value, String name, String literal) {
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

