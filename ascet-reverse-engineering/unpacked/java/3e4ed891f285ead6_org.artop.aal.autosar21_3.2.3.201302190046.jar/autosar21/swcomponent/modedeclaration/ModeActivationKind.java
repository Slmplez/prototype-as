/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar21.swcomponent.modedeclaration;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ModeActivationKind implements Enumerator
{
    ENTRY(0, "entry", "ENTRY"),
    EXIT(1, "exit", "EXIT");

    public static final int ENTRY_VALUE = 0;
    public static final int EXIT_VALUE = 1;
    private static final ModeActivationKind[] VALUES_ARRAY;
    public static final List<ModeActivationKind> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ModeActivationKind[]{ENTRY, EXIT};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ModeActivationKind get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ModeActivationKind result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ModeActivationKind getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ModeActivationKind result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ModeActivationKind get(int value) {
        switch (value) {
            case 0: {
                return ENTRY;
            }
            case 1: {
                return EXIT;
            }
        }
        return null;
    }

    private ModeActivationKind(int value, String name, String literal) {
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

