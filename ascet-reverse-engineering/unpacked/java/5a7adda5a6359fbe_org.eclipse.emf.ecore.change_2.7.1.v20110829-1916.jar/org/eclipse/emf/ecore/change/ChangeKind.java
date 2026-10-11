/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package org.eclipse.emf.ecore.change;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ChangeKind implements Enumerator
{
    ADD_LITERAL(0, "ADD", "ADD"),
    REMOVE_LITERAL(1, "REMOVE", "REMOVE"),
    MOVE_LITERAL(2, "MOVE", "MOVE");

    public static final int ADD = 0;
    public static final int REMOVE = 1;
    public static final int MOVE = 2;
    private static final ChangeKind[] VALUES_ARRAY;
    public static final List<ChangeKind> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ChangeKind[]{ADD_LITERAL, REMOVE_LITERAL, MOVE_LITERAL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ChangeKind get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ChangeKind result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ChangeKind getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ChangeKind result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ChangeKind get(int value) {
        switch (value) {
            case 0: {
                return ADD_LITERAL;
            }
            case 1: {
                return REMOVE_LITERAL;
            }
            case 2: {
                return MOVE_LITERAL;
            }
        }
        return null;
    }

    private ChangeKind(int value, String name, String literal) {
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

