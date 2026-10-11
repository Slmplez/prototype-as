/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.ui;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.ui.IWorkingSet;

public interface IWorkingSetElementAdapter {
    public IAdaptable[] adaptElements(IWorkingSet var1, IAdaptable[] var2);

    public void dispose();
}

