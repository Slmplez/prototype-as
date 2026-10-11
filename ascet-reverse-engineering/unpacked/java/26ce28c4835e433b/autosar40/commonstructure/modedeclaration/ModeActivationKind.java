/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package autosar40.commonstructure.modedeclaration;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ModeActivationKind implements Enumerator
{
    ON_ENTRY(0, "onEntry", "ON-ENTRY"),
    ON_EXIT(1, "onExit", "ON-EXIT"),
    ON_TRANSITION(2, "onTransition", "ON-TRANSITION");

    public static final int ON_ENTRY_VALUE = 0;
    public static final int ON_EXIT_VALUE = 1;
    public static final int ON_TRANSITION_VALUE = 2;
    private static final ModeActivationKind[] VALUES_ARRAY;
    public static final List<ModeActivationKind> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ModeActivationKind[]{ON_ENTRY, ON_EXIT, ON_TRANSITION};
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
                return ON_ENTRY;
            }
            case 1: {
                return ON_EXIT;
            }
            case 2: {
                return ON_TRANSITION;
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

