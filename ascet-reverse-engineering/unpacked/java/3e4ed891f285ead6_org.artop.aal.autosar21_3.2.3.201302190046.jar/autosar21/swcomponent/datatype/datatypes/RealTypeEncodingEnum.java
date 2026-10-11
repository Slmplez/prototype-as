/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.swcomponent.datatype.datatypes;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum RealTypeEncodingEnum implements Enumerator
{
    SINGLE(0, "Single", "SINGLE"),
    DOUBLE(1, "Double", "DOUBLE");

    public static final int SINGLE_VALUE = 0;
    public static final int DOUBLE_VALUE = 1;
    private static final RealTypeEncodingEnum[] VALUES_ARRAY;
    public static final List<RealTypeEncodingEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new RealTypeEncodingEnum[]{SINGLE, DOUBLE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static RealTypeEncodingEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            RealTypeEncodingEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static RealTypeEncodingEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            RealTypeEncodingEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static RealTypeEncodingEnum get(int value) {
        switch (value) {
            case 0: {
                return SINGLE;
            }
            case 1: {
                return DOUBLE;
            }
        }
        return null;
    }

    private RealTypeEncodingEnum(int value, String name, String literal) {
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

