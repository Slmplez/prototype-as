/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.operations.IAdvancedUndoableOperation
 *  org.eclipse.core.commands.operations.IOperationApprover
 *  org.eclipse.core.commands.operations.IOperationHistory
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.operations;

import java.util.ArrayList;
import org.eclipse.core.commands.operations.IAdvancedUndoableOperation;
import org.eclipse.core.commands.operations.IOperationApprover;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.util.Util;

public final class NonLocalUndoUserApprover
implements IOperationApprover {
    private IUndoContext context;
    private IEditorPart part;
    private Object[] elements;
    private Class affectedObjectsClass;
    private ArrayList elementsAndAdapters;
    static /* synthetic */ Class class$0;

    public NonLocalUndoUserApprover(IUndoContext context, IEditorPart part, Object[] affectedObjects, Class preferredComparisonClass) {
        this.context = context;
        this.part = part;
        this.affectedObjectsClass = preferredComparisonClass;
        this.elements = affectedObjects;
    }

    public IStatus proceedRedoing(IUndoableOperation operation, IOperationHistory history, IAdaptable uiInfo) {
        if (!this.requiresApproval(operation, uiInfo)) {
            return Status.OK_STATUS;
        }
        String message = NLS.bind((String)WorkbenchMessages.Operations_nonLocalRedoWarning, (Object)operation.getLabel(), (Object)this.part.getEditorInput().getName());
        return this.proceedWithOperation(operation, message, WorkbenchMessages.Operations_discardRedo, WorkbenchMessages.Workbench_redoToolTip);
    }

    public IStatus proceedUndoing(IUndoableOperation operation, IOperationHistory history, IAdaptable uiInfo) {
        if (!this.requiresApproval(operation, uiInfo)) {
            return Status.OK_STATUS;
        }
        String message = NLS.bind((String)WorkbenchMessages.Operations_nonLocalUndoWarning, (Object)operation.getLabel(), (Object)this.part.getEditorInput().getName());
        return this.proceedWithOperation(operation, message, WorkbenchMessages.Operations_discardUndo, WorkbenchMessages.Workbench_undoToolTip);
    }

    private IStatus proceedWithOperation(IUndoableOperation operation, final String message, final String discardButton, final String title) {
        boolean local;
        if (!(operation instanceof IAdvancedUndoableOperation)) {
            return Status.OK_STATUS;
        }
        Object[] modifiedElements = ((IAdvancedUndoableOperation)operation).getAffectedObjects();
        if (modifiedElements == null) {
            local = false;
        } else {
            local = true;
            int i = 0;
            while (i < modifiedElements.length) {
                Object modifiedElement = modifiedElements[i];
                if (!this.elementsContains(modifiedElement)) {
                    Object adapter;
                    local = false;
                    if (this.affectedObjectsClass != null && (adapter = Util.getAdapter(modifiedElement, this.affectedObjectsClass)) != null && this.elementsContains(adapter)) {
                        local = true;
                    }
                    if (!local) break;
                }
                ++i;
            }
        }
        if (local) {
            return Status.OK_STATUS;
        }
        final int[] answer = new int[1];
        PlatformUI.getWorkbench().getDisplay().syncExec(new Runnable(){

            public void run() {
                MessageDialog dialog = new MessageDialog(NonLocalUndoUserApprover.this.part.getSite().getShell(), title, null, message, 3, new String[]{IDialogConstants.OK_LABEL, discardButton, IDialogConstants.CANCEL_LABEL}, 0);
                answer[0] = dialog.open();
            }
        });
        switch (answer[0]) {
            case 0: {
                return Status.OK_STATUS;
            }
            case 1: {
                return IOperationHistory.OPERATION_INVALID_STATUS;
            }
        }
        return Status.CANCEL_STATUS;
    }

    private boolean requiresApproval(IUndoableOperation operation, IAdaptable uiInfo) {
        if (!operation.hasContext(this.context)) {
            return false;
        }
        if (operation.getContexts().length == 1) {
            return false;
        }
        if (uiInfo != null) {
            IUndoContext originatingContext;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.commands.operations.IUndoContext");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((originatingContext = (IUndoContext)Util.getAdapter(uiInfo, clazz)) != null && !originatingContext.matches(this.context)) {
                return false;
            }
        }
        return true;
    }

    private boolean elementsContains(Object someObject) {
        int i;
        if (this.elements == null) {
            return false;
        }
        if (this.elementsAndAdapters == null) {
            this.elementsAndAdapters = new ArrayList(this.elements.length);
            i = 0;
            while (i < this.elements.length) {
                Object adapter;
                Object element = this.elements[i];
                this.elementsAndAdapters.add(element);
                if (this.affectedObjectsClass != null && !this.affectedObjectsClass.isInstance(element) && (adapter = Util.getAdapter(element, this.affectedObjectsClass)) != null) {
                    this.elementsAndAdapters.add(adapter);
                }
                ++i;
            }
        }
        i = 0;
        while (i < this.elementsAndAdapters.size()) {
            if (this.elementsAndAdapters.get(i).equals(someObject)) {
                return true;
            }
            ++i;
        }
        return false;
    }
}

