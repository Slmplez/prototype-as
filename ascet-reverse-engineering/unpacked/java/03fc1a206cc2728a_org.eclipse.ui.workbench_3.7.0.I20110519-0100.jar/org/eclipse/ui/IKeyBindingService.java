/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 */
package org.eclipse.ui;

import org.eclipse.jface.action.IAction;

public interface IKeyBindingService {
    public String[] getScopes();

    public void registerAction(IAction var1);

    public void setScopes(String[] var1);

    public void unregisterAction(IAction var1);
}

