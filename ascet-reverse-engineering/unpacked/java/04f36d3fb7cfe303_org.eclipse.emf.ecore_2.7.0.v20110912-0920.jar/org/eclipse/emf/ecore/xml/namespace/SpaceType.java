/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package org.eclipse.emf.ecore.xml.namespace;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum SpaceType implements Enumerator
{
    DEFAULT_LITERAL(0, "default", "default"),
    PRESERVE_LITERAL(1, "preserve", "preserve");

    public static final int DEFAULT = 0;
    public static final int PRESERVE = 1;
    private static final SpaceType[] VALUES_ARRAY;
    public static final List<SpaceType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new SpaceType[]{DEFAULT_LITERAL, PRESERVE_LITERAL};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static SpaceType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SpaceType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SpaceType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            SpaceType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static SpaceType get(int value) {
        switch (value) {
            case 0: {
                return DEFAULT_LITERAL;
            }
            case 1: {
                return PRESERVE_LITERAL;
            }
        }
        return null;
    }

    private SpaceType(int value, String name, String literal) {
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

