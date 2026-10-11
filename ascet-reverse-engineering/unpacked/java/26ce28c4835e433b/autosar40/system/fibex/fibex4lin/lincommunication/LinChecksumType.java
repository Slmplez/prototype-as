/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum LinChecksumType implements Enumerator
{
    CLASSIC(0, "classic", "CLASSIC"),
    ENHANCED(1, "enhanced", "ENHANCED");

    public static final int CLASSIC_VALUE = 0;
    public static final int ENHANCED_VALUE = 1;
    private static final LinChecksumType[] VALUES_ARRAY;
    public static final List<LinChecksumType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new LinChecksumType[]{CLASSIC, ENHANCED};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static LinChecksumType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            LinChecksumType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static LinChecksumType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            LinChecksumType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static LinChecksumType get(int value) {
        switch (value) {
            case 0: {
                return CLASSIC;
            }
            case 1: {
                return ENHANCED;
            }
        }
        return null;
    }

    private LinChecksumType(int value, String name, String literal) {
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

