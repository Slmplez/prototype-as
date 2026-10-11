/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.State;

public interface IObjectWithState {
    public void addState(String var1, State var2);

    public State getState(String var1);

    public String[] getStateIds();

    public void removeState(String var1);
}

