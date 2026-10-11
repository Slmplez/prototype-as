/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPersistable;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.PartInitException;

public interface IViewPart
extends IWorkbenchPart,
IPersistable {
    public IViewSite getViewSite();

    public void init(IViewSite var1) throws PartInitException;

    public void init(IViewSite var1, IMemento var2) throws PartInitException;

    public void saveState(IMemento var1);
}

