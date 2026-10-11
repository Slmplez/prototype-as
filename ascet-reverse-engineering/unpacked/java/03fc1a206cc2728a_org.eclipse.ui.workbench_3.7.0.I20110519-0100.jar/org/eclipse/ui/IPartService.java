/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IPartListener2;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;

public interface IPartService {
    public void addPartListener(IPartListener var1);

    public void addPartListener(IPartListener2 var1);

    public IWorkbenchPart getActivePart();

    public IWorkbenchPartReference getActivePartReference();

    public void removePartListener(IPartListener var1);

    public void removePartListener(IPartListener2 var1);
}

