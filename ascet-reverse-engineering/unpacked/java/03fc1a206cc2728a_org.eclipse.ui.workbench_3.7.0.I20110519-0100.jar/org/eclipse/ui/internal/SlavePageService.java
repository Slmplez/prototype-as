/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.ListenerList;
import org.eclipse.ui.IPageListener;
import org.eclipse.ui.IPageService;
import org.eclipse.ui.IPerspectiveListener;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.services.IDisposable;

public class SlavePageService
implements IPageService,
IDisposable {
    private IPageService parent;
    private ListenerList pageListeners = new ListenerList(1);
    private ListenerList perspectiveListeners = new ListenerList(1);

    public SlavePageService(IPageService parent) {
        if (parent == null) {
            throw new IllegalArgumentException("Parent IPageService cannot be null");
        }
        this.parent = parent;
    }

    public void addPageListener(IPageListener listener) {
        this.pageListeners.add((Object)listener);
        this.parent.addPageListener(listener);
    }

    public void addPerspectiveListener(IPerspectiveListener listener) {
        this.perspectiveListeners.add((Object)listener);
        this.parent.addPerspectiveListener(listener);
    }

    public IWorkbenchPage getActivePage() {
        return this.parent.getActivePage();
    }

    public void removePageListener(IPageListener listener) {
        this.pageListeners.remove((Object)listener);
        this.parent.removePageListener(listener);
    }

    public void removePerspectiveListener(IPerspectiveListener listener) {
        this.perspectiveListeners.remove((Object)listener);
        this.parent.removePerspectiveListener(listener);
    }

    public void dispose() {
        Object[] listeners = this.pageListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            this.parent.removePageListener((IPageListener)listeners[i]);
            ++i;
        }
        this.pageListeners.clear();
        listeners = this.perspectiveListeners.getListeners();
        i = 0;
        while (i < listeners.length) {
            this.parent.removePerspectiveListener((IPerspectiveListener)listeners[i]);
            ++i;
        }
        this.perspectiveListeners.clear();
    }
}

