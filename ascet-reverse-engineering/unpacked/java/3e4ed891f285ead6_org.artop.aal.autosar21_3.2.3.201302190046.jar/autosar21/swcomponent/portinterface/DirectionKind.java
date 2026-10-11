/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.swcomponent.portinterface;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum DirectionKind implements Enumerator
{
    OUT(0, "out", "OUT"),
    INOUT(1, "inout", "INOUT"),
    IN(2, "in", "IN");

    public static final int OUT_VALUE = 0;
    public static final int INOUT_VALUE = 1;
    public static final int IN_VALUE = 2;
    private static final DirectionKind[] VALUES_ARRAY;
    public static final List<DirectionKind> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new DirectionKind[]{OUT, INOUT, IN};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static DirectionKind get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DirectionKind result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DirectionKind getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            DirectionKind result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static DirectionKind get(int value) {
        switch (value) {
            case 0: {
                return OUT;
            }
            case 1: {
                return INOUT;
            }
            case 2: {
                return IN;
            }
        }
        return null;
    }

    private DirectionKind(int value, String name, String literal) {
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

