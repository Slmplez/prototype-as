/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package com.etas.amd620.core.ComponentMain;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

public enum InternalAccessType implements Enumerator
{
    SEND(0, "Send", "Send"),
    RECEIVE(1, "Receive", "Receive"),
    SEND_RECEIVE(2, "SendReceive", "SendReceive");

    public static final int SEND_VALUE = 0;
    public static final int RECEIVE_VALUE = 1;
    public static final int SEND_RECEIVE_VALUE = 2;
    private static final InternalAccessType[] VALUES_ARRAY;
    public static final List<InternalAccessType> VALUES;
    private final int value;
    private final String name;
    private final String literal;

    static {
        VALUES_ARRAY = new InternalAccessType[]{SEND, RECEIVE, SEND_RECEIVE};
        VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));
    }

    public static InternalAccessType get(String literal) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            InternalAccessType result = VALUES_ARRAY[i];
            if (result.toString().equals(literal)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static InternalAccessType getByName(String name) {
        int i = 0;
        while (i < VALUES_ARRAY.length) {
            InternalAccessType result = VALUES_ARRAY[i];
            if (result.getName().equals(name)) {
                return result;
            }
            ++i;
        }
        return null;
    }

    public static InternalAccessType get(int value) {
        switch (value) {
            case 0: {
                return SEND;
            }
            case 1: {
                return RECEIVE;
            }
            case 2: {
                return SEND_RECEIVE;
            }
        }
        return null;
    }

    private InternalAccessType(int value, String name, String literal) {
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

