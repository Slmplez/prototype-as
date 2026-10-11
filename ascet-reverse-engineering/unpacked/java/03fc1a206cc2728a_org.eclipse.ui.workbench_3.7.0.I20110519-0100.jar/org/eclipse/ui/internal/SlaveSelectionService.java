/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.ui.internal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ui.ISelectionListener;
import org.eclipse.ui.ISelectionService;
import org.eclipse.ui.services.IDisposable;

public class SlaveSelectionService
implements ISelectionService,
IDisposable {
    private ListenerList postListeners = new ListenerList(1);
    private ListenerList listeners = new ListenerList(1);
    private Map listenersToPartId = new HashMap();
    private Map postListenersToPartId = new HashMap();
    private ISelectionService parentSelectionService;

    public SlaveSelectionService(ISelectionService parentSelectionService) {
        if (parentSelectionService == null) {
            throw new IllegalArgumentException("The parent selection service cannot be null");
        }
        this.parentSelectionService = parentSelectionService;
    }

    public void addPostSelectionListener(ISelectionListener listener) {
        this.postListeners.add((Object)listener);
        this.parentSelectionService.addPostSelectionListener(listener);
    }

    public void addPostSelectionListener(String partId, ISelectionListener listener) {
        this.listenersToPartId.put(listener, partId);
        this.parentSelectionService.addPostSelectionListener(partId, listener);
    }

    public void addSelectionListener(ISelectionListener listener) {
        this.listeners.add((Object)listener);
        this.parentSelectionService.addSelectionListener(listener);
    }

    public void addSelectionListener(String partId, ISelectionListener listener) {
        this.postListenersToPartId.put(listener, partId);
        this.parentSelectionService.addPostSelectionListener(partId, listener);
    }

    public ISelection getSelection() {
        return this.parentSelectionService.getSelection();
    }

    public ISelection getSelection(String partId) {
        return this.parentSelectionService.getSelection(partId);
    }

    public void removePostSelectionListener(ISelectionListener listener) {
        this.postListeners.remove((Object)listener);
        this.parentSelectionService.removePostSelectionListener(listener);
    }

    public void removePostSelectionListener(String partId, ISelectionListener listener) {
        this.postListenersToPartId.remove(listener);
        this.parentSelectionService.removePostSelectionListener(partId, listener);
    }

    public void removeSelectionListener(ISelectionListener listener) {
        this.listeners.remove((Object)listener);
        this.parentSelectionService.removeSelectionListener(listener);
    }

    public void removeSelectionListener(String partId, ISelectionListener listener) {
        this.listenersToPartId.remove(listener);
        this.parentSelectionService.removeSelectionListener(partId, listener);
    }

    public void dispose() {
        Object listener;
        Object[] list = this.listeners.getListeners();
        int i = 0;
        while (i < list.length) {
            this.parentSelectionService.removeSelectionListener((ISelectionListener)list[i]);
            ++i;
        }
        this.listeners.clear();
        list = this.postListeners.getListeners();
        i = 0;
        while (i < list.length) {
            this.parentSelectionService.removePostSelectionListener((ISelectionListener)list[i]);
            ++i;
        }
        this.postListeners.clear();
        Iterator i2 = this.listenersToPartId.keySet().iterator();
        while (i2.hasNext()) {
            listener = i2.next();
            this.parentSelectionService.removeSelectionListener((String)this.listenersToPartId.get(listener), (ISelectionListener)listener);
        }
        this.listenersToPartId.clear();
        i2 = this.postListenersToPartId.keySet().iterator();
        while (i2.hasNext()) {
            listener = i2.next();
            this.parentSelectionService.removePostSelectionListener((String)this.postListenersToPartId.get(listener), (ISelectionListener)listener);
        }
        this.postListenersToPartId.clear();
    }
}

