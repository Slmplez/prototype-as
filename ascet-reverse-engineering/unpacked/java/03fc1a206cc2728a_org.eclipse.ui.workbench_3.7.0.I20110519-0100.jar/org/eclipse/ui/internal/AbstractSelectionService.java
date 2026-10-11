/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.jface.viewers.IPostSelectionProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 */
package org.eclipse.ui.internal;

import java.util.Hashtable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.viewers.IPostSelectionProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.ui.INullSelectionListener;
import org.eclipse.ui.ISelectionListener;
import org.eclipse.ui.ISelectionService;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.internal.AbstractPartSelectionTracker;
import org.eclipse.ui.internal.WorkbenchPlugin;

public abstract class AbstractSelectionService
implements ISelectionService {
    private ListenerList listeners = new ListenerList();
    private ListenerList postListeners = new ListenerList();
    private IWorkbenchPart activePart;
    private ISelectionProvider activeProvider;
    private Hashtable perPartTrackers;
    private ISelectionChangedListener selListener = new ISelectionChangedListener(){

        public void selectionChanged(SelectionChangedEvent event) {
            AbstractSelectionService.this.fireSelection(AbstractSelectionService.this.activePart, event.getSelection());
        }
    };
    private ISelectionChangedListener postSelListener = new ISelectionChangedListener(){

        public void selectionChanged(SelectionChangedEvent event) {
            AbstractSelectionService.this.firePostSelection(AbstractSelectionService.this.activePart, event.getSelection());
        }
    };

    protected AbstractSelectionService() {
    }

    public void addSelectionListener(ISelectionListener l) {
        this.listeners.add((Object)l);
    }

    public void addSelectionListener(String partId, ISelectionListener listener) {
        this.getPerPartTracker(partId).addSelectionListener(listener);
    }

    public void addPostSelectionListener(ISelectionListener l) {
        this.postListeners.add((Object)l);
    }

    public void addPostSelectionListener(String partId, ISelectionListener listener) {
        this.getPerPartTracker(partId).addPostSelectionListener(listener);
    }

    public void removeSelectionListener(ISelectionListener l) {
        this.listeners.remove((Object)l);
    }

    public void removePostSelectionListener(String partId, ISelectionListener listener) {
        this.getPerPartTracker(partId).removePostSelectionListener(listener);
    }

    public void removePostSelectionListener(ISelectionListener l) {
        this.postListeners.remove((Object)l);
    }

    public void removeSelectionListener(String partId, ISelectionListener listener) {
        this.getPerPartTracker(partId).removeSelectionListener(listener);
    }

    protected void fireSelection(IWorkbenchPart part, ISelection sel) {
        Object[] array = this.listeners.getListeners();
        int i = 0;
        while (i < array.length) {
            ISelectionListener l = (ISelectionListener)array[i];
            if (part != null && sel != null || l instanceof INullSelectionListener) {
                try {
                    l.selectionChanged(part, sel);
                }
                catch (Exception e) {
                    WorkbenchPlugin.log(e);
                }
            }
            ++i;
        }
    }

    protected void firePostSelection(IWorkbenchPart part, ISelection sel) {
        Object[] array = this.postListeners.getListeners();
        int i = 0;
        while (i < array.length) {
            ISelectionListener l = (ISelectionListener)array[i];
            if (part != null && sel != null || l instanceof INullSelectionListener) {
                try {
                    l.selectionChanged(part, sel);
                }
                catch (Exception e) {
                    WorkbenchPlugin.log(e);
                }
            }
            ++i;
        }
    }

    protected AbstractPartSelectionTracker getPerPartTracker(String partId) {
        AbstractPartSelectionTracker tracker;
        if (this.perPartTrackers == null) {
            this.perPartTrackers = new Hashtable(4);
        }
        if ((tracker = (AbstractPartSelectionTracker)this.perPartTrackers.get(partId)) == null) {
            tracker = this.createPartTracker(partId);
            this.perPartTrackers.put(partId, tracker);
        }
        return tracker;
    }

    protected abstract AbstractPartSelectionTracker createPartTracker(String var1);

    public ISelection getSelection() {
        if (this.activeProvider != null) {
            return this.activeProvider.getSelection();
        }
        return null;
    }

    public ISelection getSelection(String partId) {
        return this.getPerPartTracker(partId).getSelection();
    }

    public void setActivePart(IWorkbenchPart newPart) {
        if (newPart == this.activePart) {
            return;
        }
        ISelectionProvider selectionProvider = null;
        if (newPart != null && (selectionProvider = newPart.getSite().getSelectionProvider()) == null) {
            newPart = null;
        }
        if (newPart == this.activePart) {
            return;
        }
        if (this.activePart != null) {
            if (this.activeProvider != null) {
                this.activeProvider.removeSelectionChangedListener(this.selListener);
                if (this.activeProvider instanceof IPostSelectionProvider) {
                    ((IPostSelectionProvider)this.activeProvider).removePostSelectionChangedListener(this.postSelListener);
                } else {
                    this.activeProvider.removeSelectionChangedListener(this.postSelListener);
                }
                this.activeProvider = null;
            }
            this.activePart = null;
        }
        this.activePart = newPart;
        if (newPart != null) {
            this.activeProvider = selectionProvider;
            this.activeProvider.addSelectionChangedListener(this.selListener);
            ISelection sel = this.activeProvider.getSelection();
            this.fireSelection(newPart, sel);
            if (this.activeProvider instanceof IPostSelectionProvider) {
                ((IPostSelectionProvider)this.activeProvider).addPostSelectionChangedListener(this.postSelListener);
            } else {
                this.activeProvider.addSelectionChangedListener(this.postSelListener);
            }
            this.firePostSelection(newPart, sel);
        } else {
            this.fireSelection(null, null);
            this.firePostSelection(null, null);
        }
    }
}

