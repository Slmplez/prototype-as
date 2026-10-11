/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.ListenerList;
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IPartListener2;
import org.eclipse.ui.IPartService;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.services.IDisposable;

public class SlavePartService
implements IPartService,
IDisposable {
    private IPartService parent;
    private ListenerList listeners = new ListenerList(1);

    public SlavePartService(IPartService parentPartService) {
        if (parentPartService == null) {
            throw new IllegalArgumentException("The parent part service cannot be null");
        }
        this.parent = parentPartService;
    }

    public void addPartListener(IPartListener listener) {
        this.listeners.add((Object)listener);
        this.parent.addPartListener(listener);
    }

    public void addPartListener(IPartListener2 listener) {
        this.listeners.add((Object)listener);
        this.parent.addPartListener(listener);
    }

    public IWorkbenchPart getActivePart() {
        return this.parent.getActivePart();
    }

    public IWorkbenchPartReference getActivePartReference() {
        return this.parent.getActivePartReference();
    }

    public void removePartListener(IPartListener listener) {
        this.listeners.remove((Object)listener);
        this.parent.removePartListener(listener);
    }

    public void removePartListener(IPartListener2 listener) {
        this.listeners.remove((Object)listener);
        this.parent.removePartListener(listener);
    }

    public void dispose() {
        Object[] list = this.listeners.getListeners();
        int i = 0;
        while (i < list.length) {
            Object obj = list[i];
            if (obj instanceof IPartListener) {
                this.parent.removePartListener((IPartListener)obj);
            }
            if (obj instanceof IPartListener2) {
                this.parent.removePartListener((IPartListener2)obj);
            }
            ++i;
        }
        this.listeners.clear();
    }
}

