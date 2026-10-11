/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

public class Counter {
    private int value = 1;

    public void inc() {
        ++this.value;
    }

    public void dec() {
        --this.value;
    }

    public String toString() {
        return String.valueOf(this.value);
    }
}

