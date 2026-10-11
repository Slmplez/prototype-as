/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.system.swmapping;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SwcToEcuMappingConstraintType implements Enumerator
{
    DEDICATED(0, "dedicated", "DEDICATED"),
    EXCLUSIVE(1, "exclusive", "EXCLUSIVE");

    public static final int DEDICATED_VALUE = 0;
    public static final int EXCLUSIVE_VALUE = 1;
    private static final SwcToEcuMappingConstraintType[] VALUES_ARRAY;
    public static final List<SwcToEcuMappingConstraintType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SwcToEcuMappingConstraintType[]{DEDICATED, EXCLUSIVE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SwcToEcuMappingConstraintType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SwcToEcuMappingConstraintType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SwcToEcuMappingConstraintType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SwcToEcuMappingConstraintType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SwcToEcuMappingConstraintType get(int value) {
        switch (value) {
            case 0: {
                return DEDICATED;
            }
            case 1: {
                return EXCLUSIVE;
            }
        }
        return null;
    }

    private SwcToEcuMappingConstraintType(int value, String name, String literal) {
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

