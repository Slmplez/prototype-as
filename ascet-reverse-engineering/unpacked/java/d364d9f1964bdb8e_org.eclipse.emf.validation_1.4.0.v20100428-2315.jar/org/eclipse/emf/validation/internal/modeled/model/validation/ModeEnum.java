/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package org.eclipse.emf.validation.internal.modeled.model.validation;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ModeEnum implements Enumerator
{
    BATCH(0, "Batch", "Batch"),
    LIVE(1, "Live", "Live");

    public static final int BATCH_VALUE = 0;
    public static final int LIVE_VALUE = 1;
    private static final ModeEnum[] VALUES_ARRAY;
    public static final List<ModeEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new ModeEnum[]{BATCH, LIVE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static ModeEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ModeEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ModeEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            ModeEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static ModeEnum get(int value) {
        switch (value) {
            case 0: {
                return BATCH;
            }
            case 1: {
                return LIVE;
            }
        }
        return null;
    }

    private ModeEnum(int value, String name, String literal) {
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

