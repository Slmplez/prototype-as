/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.IOperationHistory
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.commands.operations.LinearUndoViolationDetector
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.operations;

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.commands.operations.LinearUndoViolationDetector;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPart2;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;

public final class LinearUndoViolationUserApprover
extends LinearUndoViolationDetector {
    private IWorkbenchPart part;
    private IUndoContext context;

    public LinearUndoViolationUserApprover(IUndoContext context, IWorkbenchPart part) {
        this.part = part;
        this.context = context;
    }

    protected IStatus allowLinearRedoViolation(IUndoableOperation operation, IUndoContext context, IOperationHistory history, IAdaptable uiInfo) {
        if (this.context != context) {
            return Status.OK_STATUS;
        }
        final String message = NLS.bind((String)WorkbenchMessages.Operations_linearRedoViolation, (Object)this.getTitle(this.part), (Object)operation.getLabel());
        final boolean[] proceed = new boolean[1];
        PlatformUI.getWorkbench().getDisplay().syncExec(new Runnable(){

            public void run() {
                LinearUndoViolationUserApprover.this.part.setFocus();
                proceed[0] = MessageDialog.openQuestion((Shell)LinearUndoViolationUserApprover.this.part.getSite().getShell(), (String)LinearUndoViolationUserApprover.this.getTitle(LinearUndoViolationUserApprover.this.part), (String)message);
            }
        });
        if (proceed[0]) {
            while (operation != history.getRedoOperation(context)) {
                try {
                    IStatus status = history.redo(context, null, uiInfo);
                    if (status.isOK()) continue;
                    history.dispose(context, false, true, false);
                    return Status.CANCEL_STATUS;
                }
                catch (ExecutionException executionException) {
                    history.dispose(context, false, true, false);
                    return Status.CANCEL_STATUS;
                }
            }
            return Status.OK_STATUS;
        }
        return Status.CANCEL_STATUS;
    }

    protected IStatus allowLinearUndoViolation(IUndoableOperation operation, IUndoContext context, IOperationHistory history, IAdaptable uiInfo) {
        if (this.context != context) {
            return Status.OK_STATUS;
        }
        final String message = NLS.bind((String)WorkbenchMessages.Operations_linearUndoViolation, (Object)this.getTitle(this.part), (Object)operation.getLabel());
        final boolean[] proceed = new boolean[1];
        PlatformUI.getWorkbench().getDisplay().syncExec(new Runnable(){

            public void run() {
                LinearUndoViolationUserApprover.this.part.setFocus();
                proceed[0] = MessageDialog.openQuestion((Shell)LinearUndoViolationUserApprover.this.part.getSite().getShell(), (String)LinearUndoViolationUserApprover.this.getTitle(LinearUndoViolationUserApprover.this.part), (String)message);
            }
        });
        if (proceed[0]) {
            while (operation != history.getUndoOperation(context)) {
                try {
                    IStatus status = history.undo(context, null, uiInfo);
                    if (status.isOK()) continue;
                    history.dispose(context, true, false, false);
                    return Status.CANCEL_STATUS;
                }
                catch (ExecutionException executionException) {
                    history.dispose(context, true, false, false);
                    return Status.CANCEL_STATUS;
                }
            }
            return Status.OK_STATUS;
        }
        return Status.CANCEL_STATUS;
    }

    private String getTitle(IWorkbenchPart part) {
        String title = part instanceof IWorkbenchPart2 ? ((IWorkbenchPart2)part).getPartName() : part.getTitle();
        if (title == null) {
            title = "";
        }
        return title;
    }
}

