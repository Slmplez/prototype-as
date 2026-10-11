/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.State
 */
package org.eclipse.jface.commands;

import org.eclipse.core.commands.State;
import org.eclipse.jface.preference.IPreferenceStore;

public abstract class PersistentState
extends State {
    private boolean persisted;

    public abstract void load(IPreferenceStore var1, String var2);

    public abstract void save(IPreferenceStore var1, String var2);

    public void setShouldPersist(boolean persisted) {
        this.persisted = persisted;
    }

    public boolean shouldPersist() {
        return this.persisted;
    }
}

