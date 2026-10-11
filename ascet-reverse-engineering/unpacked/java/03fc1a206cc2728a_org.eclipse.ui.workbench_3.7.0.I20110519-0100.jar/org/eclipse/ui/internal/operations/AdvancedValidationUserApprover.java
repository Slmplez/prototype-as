/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.IAdvancedUndoableOperation
 *  org.eclipse.core.commands.operations.IAdvancedUndoableOperation2
 *  org.eclipse.core.commands.operations.IOperationApprover
 *  org.eclipse.core.commands.operations.IOperationApprover2
 *  org.eclipse.core.commands.operations.IOperationHistory
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.dialogs.ErrorDialog
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.operations;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.IAdvancedUndoableOperation;
import org.eclipse.core.commands.operations.IAdvancedUndoableOperation2;
import org.eclipse.core.commands.operations.IOperationApprover;
import org.eclipse.core.commands.operations.IOperationApprover2;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.operations.TimeTriggeredProgressMonitorDialog;
import org.eclipse.ui.internal.util.Util;

public class AdvancedValidationUserApprover
implements IOperationApprover,
IOperationApprover2 {
    public static boolean AUTOMATED_MODE = false;
    private IUndoContext context;
    private static final int EXECUTING = 1;
    private static final int UNDOING = 2;
    private static final int REDOING = 3;
    static /* synthetic */ Class class$0;

    public AdvancedValidationUserApprover(IUndoContext context) {
        this.context = context;
    }

    public IStatus proceedRedoing(IUndoableOperation operation, IOperationHistory history, IAdaptable uiInfo) {
        return this.proceedWithOperation(operation, history, uiInfo, 3);
    }

    public IStatus proceedUndoing(IUndoableOperation operation, IOperationHistory history, IAdaptable uiInfo) {
        return this.proceedWithOperation(operation, history, uiInfo, 2);
    }

    public IStatus proceedExecuting(IUndoableOperation operation, IOperationHistory history, IAdaptable uiInfo) {
        return this.proceedWithOperation(operation, history, uiInfo, 1);
    }

    private IStatus proceedWithOperation(final IUndoableOperation operation, final IOperationHistory history, final IAdaptable uiInfo, final int doing) {
        if (!operation.hasContext(this.context)) {
            return Status.OK_STATUS;
        }
        if (doing == 1 ? !(operation instanceof IAdvancedUndoableOperation2) : !(operation instanceof IAdvancedUndoableOperation)) {
            return Status.OK_STATUS;
        }
        final IStatus[] status = new IStatus[1];
        PlatformUI.getWorkbench().getDisplay().syncExec(new Runnable(){

            public void run() {
                status[0] = AdvancedValidationUserApprover.this.computeOperationStatus(operation, history, uiInfo, doing);
                if (!status[0].isOK()) {
                    status[0] = AdvancedValidationUserApprover.this.reportAndInterpretStatus(status[0], uiInfo, operation, doing);
                }
            }
        });
        if (!status[0].isOK()) {
            history.operationChanged(operation);
        }
        return status[0];
    }

    private IStatus computeOperationStatus(IUndoableOperation operation, IOperationHistory history, IAdaptable uiInfo, int doing) {
        try {
            StatusReportingRunnable runnable = new StatusReportingRunnable(operation, history, uiInfo, doing);
            TimeTriggeredProgressMonitorDialog progressDialog = new TimeTriggeredProgressMonitorDialog(this.getShell(uiInfo), PlatformUI.getWorkbench().getProgressService().getLongOperationTime());
            progressDialog.run(false, true, runnable);
            return runnable.getStatus();
        }
        catch (OperationCanceledException operationCanceledException) {
            return Status.CANCEL_STATUS;
        }
        catch (InvocationTargetException e) {
            this.reportException(e, uiInfo);
            return IOperationHistory.OPERATION_INVALID_STATUS;
        }
        catch (InterruptedException interruptedException) {
            return Status.CANCEL_STATUS;
        }
    }

    private void reportException(Exception e, IAdaptable uiInfo) {
        Throwable nestedException = StatusUtil.getCause(e);
        Throwable exception = nestedException == null ? e : nestedException;
        String title = WorkbenchMessages.Error;
        String message = WorkbenchMessages.WorkbenchWindow_exceptionMessage;
        String exceptionMessage = exception.getMessage();
        if (exceptionMessage == null) {
            exceptionMessage = message;
        }
        Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, exceptionMessage, exception);
        WorkbenchPlugin.log(message, (IStatus)status);
        boolean createdShell = false;
        Shell shell = this.getShell(uiInfo);
        if (shell == null) {
            createdShell = true;
            shell = new Shell();
        }
        ErrorDialog.openError((Shell)shell, (String)title, (String)message, (IStatus)status);
        if (createdShell) {
            shell.dispose();
        }
    }

    private IStatus reportAndInterpretStatus(IStatus status, IAdaptable uiInfo, IUndoableOperation operation, int doing) {
        if (AUTOMATED_MODE) {
            if (status.getSeverity() == 2) {
                return Status.OK_STATUS;
            }
            return status;
        }
        if (status.getSeverity() == 8) {
            return status;
        }
        boolean createdShell = false;
        IStatus reportedStatus = status;
        Shell shell = this.getShell(uiInfo);
        if (shell == null) {
            createdShell = true;
            shell = new Shell();
        }
        if (status.getSeverity() != 4) {
            String title;
            String warning;
            switch (doing) {
                case 2: {
                    warning = WorkbenchMessages.Operations_proceedWithNonOKUndoStatus;
                    if (status.getSeverity() == 1) {
                        title = WorkbenchMessages.Operations_undoInfo;
                        break;
                    }
                    title = WorkbenchMessages.Operations_undoWarning;
                    break;
                }
                case 3: {
                    warning = WorkbenchMessages.Operations_proceedWithNonOKRedoStatus;
                    if (status.getSeverity() == 1) {
                        title = WorkbenchMessages.Operations_redoInfo;
                        break;
                    }
                    title = WorkbenchMessages.Operations_redoWarning;
                    break;
                }
                default: {
                    warning = WorkbenchMessages.Operations_proceedWithNonOKExecuteStatus;
                    title = status.getSeverity() == 1 ? WorkbenchMessages.Operations_executeInfo : WorkbenchMessages.Operations_executeWarning;
                }
            }
            String message = NLS.bind((String)warning, (Object[])new Object[]{status.getMessage(), operation.getLabel()});
            String[] buttons = new String[]{IDialogConstants.YES_LABEL, IDialogConstants.NO_LABEL};
            MessageDialog dialog = new MessageDialog(shell, title, null, message, 4, buttons, 0);
            int dialogAnswer = dialog.open();
            reportedStatus = dialogAnswer == 0 ? Status.OK_STATUS : Status.CANCEL_STATUS;
        } else {
            String stopped;
            String title;
            switch (doing) {
                case 2: {
                    title = WorkbenchMessages.Operations_undoProblem;
                    stopped = WorkbenchMessages.Operations_stoppedOnUndoErrorStatus;
                    break;
                }
                case 3: {
                    title = WorkbenchMessages.Operations_redoProblem;
                    stopped = WorkbenchMessages.Operations_stoppedOnRedoErrorStatus;
                    break;
                }
                default: {
                    title = WorkbenchMessages.Operations_executeProblem;
                    stopped = WorkbenchMessages.Operations_stoppedOnExecuteErrorStatus;
                }
            }
            String message = NLS.bind((String)stopped, (Object)status.getMessage(), (Object)operation.getLabel());
            MessageDialog dialog = new MessageDialog(shell, title, null, message, 4, new String[]{IDialogConstants.OK_LABEL}, 0);
            dialog.open();
        }
        if (createdShell) {
            shell.dispose();
        }
        return reportedStatus;
    }

    Shell getShell(IAdaptable uiInfo) {
        if (uiInfo != null) {
            Shell shell;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.swt.widgets.Shell");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((shell = (Shell)Util.getAdapter(uiInfo, clazz)) != null) {
                return shell;
            }
        }
        return null;
    }

    private class StatusReportingRunnable
    implements IRunnableWithProgress {
        IStatus status;
        int doing;
        IUndoableOperation operation;
        IAdaptable uiInfo;

        StatusReportingRunnable(IUndoableOperation operation, IOperationHistory history, IAdaptable uiInfo, int doing) {
            this.operation = operation;
            this.doing = doing;
            this.uiInfo = uiInfo;
        }

        public void run(IProgressMonitor pm) {
            try {
                switch (this.doing) {
                    case 2: {
                        this.status = ((IAdvancedUndoableOperation)this.operation).computeUndoableStatus(pm);
                        break;
                    }
                    case 3: {
                        this.status = ((IAdvancedUndoableOperation)this.operation).computeRedoableStatus(pm);
                        break;
                    }
                    case 1: {
                        this.status = ((IAdvancedUndoableOperation2)this.operation).computeExecutionStatus(pm);
                    }
                }
            }
            catch (ExecutionException e) {
                AdvancedValidationUserApprover.this.reportException((Exception)((Object)e), this.uiInfo);
                this.status = IOperationHistory.OPERATION_INVALID_STATUS;
            }
        }

        IStatus getStatus() {
            return this.status;
        }
    }
}

