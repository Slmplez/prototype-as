/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import org.sat4j.minisat.core.Constr;

public interface UnitPropagationListener {
    public boolean enqueue(int var1);

    public boolean enqueue(int var1, Constr var2);

    public void unset(int var1);
}

