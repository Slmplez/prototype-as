/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

interface ConflictTimer {
    public void reset();

    public void newConflict();
}

