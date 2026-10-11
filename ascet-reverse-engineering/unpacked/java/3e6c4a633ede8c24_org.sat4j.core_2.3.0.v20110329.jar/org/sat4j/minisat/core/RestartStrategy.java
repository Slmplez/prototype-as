/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.minisat.core;

import java.io.Serializable;
import org.sat4j.minisat.core.SearchParams;

public interface RestartStrategy
extends Serializable {
    public void init(SearchParams var1);

    public long nextRestartNumberOfConflict();

    public void onRestart();
}

