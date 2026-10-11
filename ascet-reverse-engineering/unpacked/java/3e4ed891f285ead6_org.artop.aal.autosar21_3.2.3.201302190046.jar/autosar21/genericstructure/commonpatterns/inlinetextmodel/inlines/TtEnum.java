/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum TtEnum implements Enumerator
{
    ORGANISATION(0, "organisation", "ORGANISATION"),
    TOOL(1, "tool", "TOOL"),
    CODE(2, "code", "CODE"),
    STATE(3, "state", "STATE"),
    SGMLTAG(4, "sgmltag", "SGMLTAG"),
    SGML_ATTRIBUTE(5, "sgmlAttribute", "SGML-ATTRIBUTE"),
    VARIABLE(6, "variable", "VARIABLE"),
    PRM(7, "prm", "PRM"),
    MATERIAL(8, "material", "MATERIAL"),
    PRODUCT(9, "product", "PRODUCT"),
    CONTROL_ELEMENT(10, "controlElement", "CONTROL-ELEMENT"),
    OTHER(11, "other", "OTHER");

    public static final int ORGANISATION_VALUE = 0;
    public static final int TOOL_VALUE = 1;
    public static final int CODE_VALUE = 2;
    public static final int STATE_VALUE = 3;
    public static final int SGMLTAG_VALUE = 4;
    public static final int SGML_ATTRIBUTE_VALUE = 5;
    public static final int VARIABLE_VALUE = 6;
    public static final int PRM_VALUE = 7;
    public static final int MATERIAL_VALUE = 8;
    public static final int PRODUCT_VALUE = 9;
    public static final int CONTROL_ELEMENT_VALUE = 10;
    public static final int OTHER_VALUE = 11;
    private static final TtEnum[] VALUES_ARRAY;
    public static final List<TtEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new TtEnum[]{ORGANISATION, TOOL, CODE, STATE, SGMLTAG, SGML_ATTRIBUTE, VARIABLE, PRM, MATERIAL, PRODUCT, CONTROL_ELEMENT, OTHER};
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
                return ORGANISATION;
            }
            case 1: {
                return TOOL;
            }
            case 2: {
                return CODE;
            }
            case 3: {
                return STATE;
            }
            case 4: {
                return SGMLTAG;
            }
            case 5: {
                return SGML_ATTRIBUTE;
            }
            case 6: {
                return VARIABLE;
            }
            case 7: {
                return PRM;
            }
            case 8: {
                return MATERIAL;
            }
            case 9: {
                return PRODUCT;
            }
            case 10: {
                return CONTROL_ELEMENT;
            }
            case 11: {
                return OTHER;
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

