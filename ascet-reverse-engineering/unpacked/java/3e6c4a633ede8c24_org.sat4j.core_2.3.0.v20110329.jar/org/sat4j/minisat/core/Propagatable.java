/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import org.sat4j.minisat.core.UnitPropagationListener;

public interface Propagatable {
    public boolean propagate(UnitPropagationListener var1, int var2);
}

