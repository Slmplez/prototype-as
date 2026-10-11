/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import java.io.Serializable;

public interface VarActivityListener
extends Serializable {
    public void varBumpActivity(int var1);
}

