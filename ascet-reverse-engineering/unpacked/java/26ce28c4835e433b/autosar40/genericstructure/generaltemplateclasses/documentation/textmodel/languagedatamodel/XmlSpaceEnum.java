/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum XmlSpaceEnum implements Enumerator
{
    PRESERVE(0, "preserve", "preserve"),
    DEFAULT(1, "default", "default");

    public static final int PRESERVE_VALUE = 0;
    public static final int DEFAULT_VALUE = 1;
    private static final XmlSpaceEnum[] VALUES_ARRAY;
    public static final List<XmlSpaceEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new XmlSpaceEnum[]{PRESERVE, DEFAULT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static XmlSpaceEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            XmlSpaceEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static XmlSpaceEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            XmlSpaceEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static XmlSpaceEnum get(int value) {
        switch (value) {
            case 0: {
                return PRESERVE;
            }
            case 1: {
                return DEFAULT;
            }
        }
        return null;
    }

    private XmlSpaceEnum(int value, String name, String literal) {
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

