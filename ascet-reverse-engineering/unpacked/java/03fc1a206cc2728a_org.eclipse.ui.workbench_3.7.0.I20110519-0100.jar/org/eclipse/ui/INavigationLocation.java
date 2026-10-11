/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IMemento;

public interface INavigationLocation {
    public void dispose();

    public void releaseState();

    public void saveState(IMemento var1);

    public void restoreState(IMemento var1);

    public void restoreLocation();

    public boolean mergeInto(INavigationLocation var1);

    public Object getInput();

    public String getText();

    public void setInput(Object var1);

    public void update();
}

