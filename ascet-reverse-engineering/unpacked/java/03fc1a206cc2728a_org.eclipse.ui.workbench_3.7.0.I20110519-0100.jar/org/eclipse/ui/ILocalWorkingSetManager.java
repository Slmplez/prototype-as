/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkingSetManager;

public interface ILocalWorkingSetManager
extends IWorkingSetManager {
    public void saveState(IMemento var1);

    public void restoreState(IMemento var1);
}

