/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.dnd.DragSource
 *  org.eclipse.swt.dnd.DragSourceEvent
 *  org.eclipse.swt.dnd.DragSourceListener
 *  org.eclipse.swt.dnd.Transfer
 */
package org.eclipse.jface.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.util.TransferDragSourceListener;
import org.eclipse.swt.dnd.DragSource;
import org.eclipse.swt.dnd.DragSourceEvent;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.Transfer;

public class DelegatingDragAdapter
implements DragSourceListener {
    private List listeners = new ArrayList();
    private List activeListeners = new ArrayList();
    private TransferDragSourceListener currentListener;

    public void addDragSourceListener(TransferDragSourceListener listener) {
        this.listeners.add(listener);
    }

    public void dragFinished(final DragSourceEvent event) {
        SafeRunnable.run(new SafeRunnable(){

            public void run() throws Exception {
                if (DelegatingDragAdapter.this.currentListener != null) {
                    DelegatingDragAdapter.this.currentListener.dragFinished(event);
                } else {
                    Iterator iterator = DelegatingDragAdapter.this.activeListeners.iterator();
                    while (iterator.hasNext()) {
                        ((TransferDragSourceListener)iterator.next()).dragFinished(event);
                    }
                }
            }
        });
        this.currentListener = null;
        this.activeListeners.clear();
    }

    public void dragSetData(final DragSourceEvent event) {
        this.updateCurrentListener(event);
        if (this.currentListener != null) {
            SafeRunnable.run(new SafeRunnable(){

                public void run() throws Exception {
                    DelegatingDragAdapter.this.currentListener.dragSetData(event);
                }
            });
        }
    }

    public void dragStart(final DragSourceEvent event) {
        boolean doit = false;
        ArrayList<Transfer> transfers = new ArrayList<Transfer>(this.listeners.size());
        this.activeListeners.clear();
        int i = 0;
        while (i < this.listeners.size()) {
            final TransferDragSourceListener listener = (TransferDragSourceListener)this.listeners.get(i);
            event.doit = true;
            SafeRunnable.run(new SafeRunnable(){

                public void run() throws Exception {
                    listener.dragStart(event);
                }
            });
            if (event.doit) {
                transfers.add(listener.getTransfer());
                this.activeListeners.add(listener);
            }
            doit |= event.doit;
            ++i;
        }
        if (doit) {
            ((DragSource)event.widget).setTransfer(transfers.toArray(new Transfer[transfers.size()]));
        }
        event.doit = doit;
    }

    public Transfer[] getTransfers() {
        Transfer[] types = new Transfer[this.listeners.size()];
        int i = 0;
        while (i < this.listeners.size()) {
            TransferDragSourceListener listener = (TransferDragSourceListener)this.listeners.get(i);
            types[i] = listener.getTransfer();
            ++i;
        }
        return types;
    }

    public boolean isEmpty() {
        return this.listeners.isEmpty();
    }

    public void removeDragSourceListener(TransferDragSourceListener listener) {
        this.listeners.remove(listener);
        if (this.currentListener == listener) {
            this.currentListener = null;
        }
        if (this.activeListeners.contains(listener)) {
            this.activeListeners.remove(listener);
        }
    }

    private void updateCurrentListener(DragSourceEvent event) {
        this.currentListener = null;
        if (event.dataType == null) {
            return;
        }
        Iterator iterator = this.activeListeners.iterator();
        while (iterator.hasNext()) {
            TransferDragSourceListener listener = (TransferDragSourceListener)iterator.next();
            if (!listener.getTransfer().isSupportedType(event.dataType)) continue;
            this.currentListener = listener;
            return;
        }
    }
}

