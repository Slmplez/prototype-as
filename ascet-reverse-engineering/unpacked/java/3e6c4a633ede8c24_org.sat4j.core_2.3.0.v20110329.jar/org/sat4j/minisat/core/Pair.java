/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import java.io.Serializable;
import org.sat4j.minisat.core.Constr;

public final class Pair
implements Serializable {
    private static final long serialVersionUID = 1L;
    public int backtrackLevel;
    public Constr reason;
}

