/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.dnd.DropTargetEvent
 *  org.eclipse.swt.dnd.DropTargetListener
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.dnd.TransferData
 */
package org.eclipse.jface.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.util.TransferDropTargetListener;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.dnd.TransferData;

public class DelegatingDropAdapter
implements DropTargetListener {
    private List listeners = new ArrayList();
    private TransferDropTargetListener currentListener;
    private int originalDropType;

    public void addDropTargetListener(TransferDropTargetListener listener) {
        this.listeners.add(listener);
    }

    public void dragEnter(DropTargetEvent event) {
        this.originalDropType = event.detail;
        this.updateCurrentListener(event);
    }

    public void dragLeave(DropTargetEvent event) {
        this.setCurrentListener(null, event);
    }

    public void dragOperationChanged(final DropTargetEvent event) {
        this.originalDropType = event.detail;
        TransferDropTargetListener oldListener = this.getCurrentListener();
        this.updateCurrentListener(event);
        final TransferDropTargetListener newListener = this.getCurrentListener();
        if (newListener != null && newListener == oldListener) {
            SafeRunnable.run(new SafeRunnable(){

                public void run() throws Exception {
                    newListener.dragOperationChanged(event);
                }
            });
        }
    }

    public void dragOver(final DropTargetEvent event) {
        TransferDropTargetListener oldListener = this.getCurrentListener();
        this.updateCurrentListener(event);
        final TransferDropTargetListener newListener = this.getCurrentListener();
        if (newListener != null && newListener == oldListener) {
            SafeRunnable.run(new SafeRunnable(){

                public void run() throws Exception {
                    newListener.dragOver(event);
                }
            });
        }
    }

    public void drop(final DropTargetEvent event) {
        this.updateCurrentListener(event);
        if (this.getCurrentListener() != null) {
            SafeRunnable.run(new SafeRunnable(){

                public void run() throws Exception {
                    DelegatingDropAdapter.this.getCurrentListener().drop(event);
                }
            });
        }
        this.setCurrentListener(null, event);
    }

    public void dropAccept(final DropTargetEvent event) {
        if (this.getCurrentListener() != null) {
            SafeRunnable.run(new SafeRunnable(){

                public void run() throws Exception {
                    DelegatingDropAdapter.this.getCurrentListener().dropAccept(event);
                }
            });
        }
    }

    private TransferDropTargetListener getCurrentListener() {
        return this.currentListener;
    }

    private TransferData getSupportedTransferType(TransferData[] dataTypes, TransferDropTargetListener listener) {
        int i = 0;
        while (i < dataTypes.length) {
            if (listener.getTransfer().isSupportedType(dataTypes[i])) {
                return dataTypes[i];
            }
            ++i;
        }
        return null;
    }

    public Transfer[] getTransfers() {
        Transfer[] types = new Transfer[this.listeners.size()];
        int i = 0;
        while (i < this.listeners.size()) {
            TransferDropTargetListener listener = (TransferDropTargetListener)this.listeners.get(i);
            types[i] = listener.getTransfer();
            ++i;
        }
        return types;
    }

    public boolean isEmpty() {
        return this.listeners.isEmpty();
    }

    public void removeDropTargetListener(TransferDropTargetListener listener) {
        if (this.currentListener == listener) {
            this.currentListener = null;
        }
        this.listeners.remove(listener);
    }

    private boolean setCurrentListener(TransferDropTargetListener listener, final DropTargetEvent event) {
        if (this.currentListener == listener) {
            return false;
        }
        if (this.currentListener != null) {
            SafeRunnable.run(new SafeRunnable(){

                public void run() throws Exception {
                    DelegatingDropAdapter.this.currentListener.dragLeave(event);
                }
            });
        }
        this.currentListener = listener;
        if (this.currentListener != null) {
            SafeRunnable.run(new SafeRunnable(){

                public void run() throws Exception {
                    DelegatingDropAdapter.this.currentListener.dragEnter(event);
                }
            });
        }
        return true;
    }

    private void updateCurrentListener(DropTargetEvent event) {
        int originalDetail = event.detail;
        event.detail = this.originalDropType;
        Iterator iter = this.listeners.iterator();
        while (iter.hasNext()) {
            TransferDropTargetListener listener = (TransferDropTargetListener)iter.next();
            TransferData dataType = this.getSupportedTransferType(event.dataTypes, listener);
            if (dataType == null) continue;
            TransferData originalDataType = event.currentDataType;
            event.currentDataType = dataType;
            if (listener.isEnabled(event)) {
                if (!this.setCurrentListener(listener, event)) {
                    event.detail = originalDetail;
                }
                return;
            }
            event.currentDataType = originalDataType;
        }
        this.setCurrentListener(null, event);
        event.detail = 0;
        event.feedback = 24;
    }
}

