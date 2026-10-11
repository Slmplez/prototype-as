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
public enum OrientEnum implements Enumerator
{
    LAND(0, "land", "LAND"),
    PORT(1, "port", "PORT");

    public static final int LAND_VALUE = 0;
    public static final int PORT_VALUE = 1;
    private static final OrientEnum[] VALUES_ARRAY;
    public static final List<OrientEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new OrientEnum[]{LAND, PORT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static OrientEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            OrientEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static OrientEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            OrientEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static OrientEnum get(int value) {
        switch (value) {
            case 0: {
                return LAND;
            }
            case 1: {
                return PORT;
            }
        }
        return null;
    }

    private OrientEnum(int value, String name, String literal) {
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

