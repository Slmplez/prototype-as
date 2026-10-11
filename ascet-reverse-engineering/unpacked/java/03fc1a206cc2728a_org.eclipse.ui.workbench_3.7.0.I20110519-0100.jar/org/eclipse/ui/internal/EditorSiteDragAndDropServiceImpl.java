/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.dnd.DropTarget
 *  org.eclipse.swt.dnd.DropTargetEvent
 *  org.eclipse.swt.dnd.DropTargetListener
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.dnd.TransferData
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.swt.dnd.DropTarget;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.dnd.IDragAndDropService;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.WorkbenchWindowConfigurer;
import org.eclipse.ui.services.IDisposable;

public class EditorSiteDragAndDropServiceImpl
implements IDragAndDropService,
IDisposable {
    private static String MDT_KEY = "MDT";
    List addedListeners = new ArrayList();

    public void addMergedDropTarget(Control control, int ops, Transfer[] transfers, DropTargetListener listener) {
        this.removeMergedDropTarget(control);
        int editorSiteOps = 21;
        WorkbenchWindow ww = (WorkbenchWindow)PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        WorkbenchWindowConfigurer winConfigurer = ww.getWindowConfigurer();
        Transfer[] editorSiteTransfers = winConfigurer.getTransfers();
        DropTargetListener editorSiteListener = winConfigurer.getDropTargetListener();
        MergedDropTarget newTarget = new MergedDropTarget(control, ops, transfers, listener, editorSiteOps, editorSiteTransfers, editorSiteListener);
        this.addedListeners.add(newTarget);
        newTarget.realDropTarget.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                Object mdt = e.widget.getData(MDT_KEY);
                EditorSiteDragAndDropServiceImpl.this.addedListeners.remove(mdt);
            }
        });
    }

    private DropTarget getCurrentDropTarget(Control control) {
        if (control == null) {
            return null;
        }
        Object curDT = control.getData("DropTarget");
        return (DropTarget)curDT;
    }

    public void removeMergedDropTarget(Control control) {
        DropTarget targetForControl = this.getCurrentDropTarget(control);
        if (targetForControl != null) {
            targetForControl.dispose();
            this.addedListeners.remove(targetForControl);
        }
    }

    public void dispose() {
        this.addedListeners.clear();
    }

    private static class MergedDropTarget {
        private DropTarget realDropTarget;
        private Transfer[] secondaryTransfers;
        private DropTargetListener secondaryListener;
        private int secondaryOps;
        private Transfer[] primaryTransfers;
        private DropTargetListener primaryListener;
        private int primaryOps;

        public MergedDropTarget(Control control, int priOps, Transfer[] priTransfers, DropTargetListener priListener, int secOps, Transfer[] secTransfers, DropTargetListener secListener) {
            this.realDropTarget = new DropTarget(control, priOps | secOps);
            this.realDropTarget.setData(MDT_KEY, (Object)this);
            this.primaryTransfers = priTransfers;
            this.primaryListener = priListener;
            this.primaryOps = priOps;
            this.secondaryTransfers = secTransfers;
            this.secondaryListener = secListener;
            this.secondaryOps = secOps;
            Transfer[] allTransfers = new Transfer[this.secondaryTransfers.length + this.primaryTransfers.length];
            int curTransfer = 0;
            int i = 0;
            while (i < this.primaryTransfers.length) {
                allTransfers[curTransfer++] = this.primaryTransfers[i];
                ++i;
            }
            i = 0;
            while (i < this.secondaryTransfers.length) {
                allTransfers[curTransfer++] = this.secondaryTransfers[i];
                ++i;
            }
            this.realDropTarget.setTransfer(allTransfers);
            this.realDropTarget.addDropListener(new DropTargetListener(this){
                final /* synthetic */ MergedDropTarget this$1;
                {
                    this.this$1 = mergedDropTarget;
                }

                public void dragEnter(DropTargetEvent event) {
                    MergedDropTarget.access$0(this.this$1, event, true).dragEnter(event);
                }

                public void dragLeave(DropTargetEvent event) {
                    MergedDropTarget.access$0(this.this$1, event, false).dragLeave(event);
                }

                public void dragOperationChanged(DropTargetEvent event) {
                    MergedDropTarget.access$0(this.this$1, event, true).dragOperationChanged(event);
                }

                public void dragOver(DropTargetEvent event) {
                    MergedDropTarget.access$0(this.this$1, event, true).dragOver(event);
                }

                public void drop(DropTargetEvent event) {
                    MergedDropTarget.access$0(this.this$1, event, true).drop(event);
                }

                public void dropAccept(DropTargetEvent event) {
                    MergedDropTarget.access$0(this.this$1, event, true).dropAccept(event);
                }
            });
        }

        private DropTargetListener getAppropriateListener(DropTargetEvent event, boolean checkOperation) {
            if (this.isSupportedType(this.primaryTransfers, event.currentDataType)) {
                if (checkOperation && !this.isSupportedOperation(this.primaryOps, event.detail)) {
                    event.detail = 0;
                }
                return this.primaryListener;
            }
            if (checkOperation && !this.isSupportedOperation(this.secondaryOps, event.detail)) {
                event.detail = 0;
            }
            return this.secondaryListener;
        }

        private boolean isSupportedType(Transfer[] transfers, TransferData transferType) {
            int i = 0;
            while (i < transfers.length) {
                if (transfers[i].isSupportedType(transferType)) {
                    return true;
                }
                ++i;
            }
            return false;
        }

        private boolean isSupportedOperation(int dropOps, int eventDetail) {
            return ((dropOps | 0x10) & eventDetail) != 0;
        }

        static /* synthetic */ DropTargetListener access$0(MergedDropTarget mergedDropTarget, DropTargetEvent dropTargetEvent, boolean bl) {
            return mergedDropTarget.getAppropriateListener(dropTargetEvent, bl);
        }
    }
}

