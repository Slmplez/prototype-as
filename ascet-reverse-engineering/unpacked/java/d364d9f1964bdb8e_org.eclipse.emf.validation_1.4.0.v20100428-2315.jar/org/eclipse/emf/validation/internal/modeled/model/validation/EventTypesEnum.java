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
public enum EventTypesEnum implements Enumerator
{
    ADD(0, "Add", "Add"),
    ADD_MANY(1, "Add_Many", "Add_Many"),
    CREATE(2, "Create", "Create"),
    MOVE(3, "Move", "Move"),
    REMOVE(4, "Remove", "Remove"),
    REMOVE_MANY(5, "Remove_Many", "Remove_Many"),
    REMOVING_ADAPTER(6, "Removing_Adapter", "Removing_Adapter"),
    RESOLVE(7, "Resolve", "Resolve"),
    SET(8, "Set", "Set"),
    UNSET(9, "Unset", "Unset");

    public static final int ADD_VALUE = 0;
    public static final int ADD_MANY_VALUE = 1;
    public static final int CREATE_VALUE = 2;
    public static final int MOVE_VALUE = 3;
    public static final int REMOVE_VALUE = 4;
    public static final int REMOVE_MANY_VALUE = 5;
    public static final int REMOVING_ADAPTER_VALUE = 6;
    public static final int RESOLVE_VALUE = 7;
    public static final int SET_VALUE = 8;
    public static final int UNSET_VALUE = 9;
    private static final EventTypesEnum[] VALUES_ARRAY;
    public static final List<EventTypesEnum> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new EventTypesEnum[]{ADD, ADD_MANY, CREATE, MOVE, REMOVE, REMOVE_MANY, REMOVING_ADAPTER, RESOLVE, SET, UNSET};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static EventTypesEnum get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            EventTypesEnum result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static EventTypesEnum getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            EventTypesEnum result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static EventTypesEnum get(int value) {
        switch (value) {
            case 0: {
                return ADD;
            }
            case 1: {
                return ADD_MANY;
            }
            case 2: {
                return CREATE;
            }
            case 3: {
                return MOVE;
            }
            case 4: {
                return REMOVE;
            }
            case 5: {
                return REMOVE_MANY;
            }
            case 6: {
                return REMOVING_ADAPTER;
            }
            case 7: {
                return RESOLVE;
            }
            case 8: {
                return SET;
            }
            case 9: {
                return UNSET;
            }
        }
        return null;
    }

    private EventTypesEnum(int value, String name, String literal) {
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

