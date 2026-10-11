/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.operations.IAdvancedUndoableOperation2
 *  org.eclipse.core.commands.operations.IOperationHistory
 *  org.eclipse.core.commands.operations.IOperationHistoryListener
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.core.commands.operations.IUndoableOperation
 *  org.eclipse.core.commands.operations.OperationHistoryEvent
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.operations;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.operations.IAdvancedUndoableOperation2;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IOperationHistoryListener;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.IUndoableOperation;
import org.eclipse.core.commands.operations.OperationHistoryEvent;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.operations.TimeTriggeredProgressMonitorDialog;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.part.MultiPageEditorSite;

public abstract class OperationHistoryActionHandler
extends Action
implements ActionFactory.IWorkbenchAction,
IAdaptable {
    private static final int MAX_LABEL_LENGTH = 32;
    private boolean pruning = false;
    private IPartListener partListener = new PartListener();
    private IOperationHistoryListener historyListener = new HistoryListener();
    private TimeTriggeredProgressMonitorDialog progressDialog;
    private IUndoContext undoContext = null;
    IWorkbenchPartSite site;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;

    OperationHistoryActionHandler(IWorkbenchPartSite site, IUndoContext context) {
        super("");
        this.site = site;
        this.undoContext = context;
        site.getPage().addPartListener(this.partListener);
        this.getHistory().addOperationHistoryListener(this.historyListener);
        this.update();
    }

    public void dispose() {
        IOperationHistory history = this.getHistory();
        if (history != null) {
            history.removeOperationHistoryListener(this.historyListener);
        }
        if (this.isInvalid()) {
            return;
        }
        this.site.getPage().removePartListener(this.partListener);
        this.site = null;
        this.progressDialog = null;
        this.undoContext = null;
    }

    abstract void flush();

    abstract String getCommandString();

    abstract String getTooltipString();

    abstract String getSimpleCommandString();

    abstract String getSimpleTooltipString();

    IOperationHistory getHistory() {
        if (PlatformUI.getWorkbench() == null) {
            return null;
        }
        return PlatformUI.getWorkbench().getOperationSupport().getOperationHistory();
    }

    abstract IUndoableOperation getOperation();

    /*
     * Loose catch block
     */
    public final void run() {
        block13: {
            if (this.isInvalid()) {
                return;
            }
            Shell parent = this.getWorkbenchWindow().getShell();
            this.progressDialog = new TimeTriggeredProgressMonitorDialog(parent, this.getWorkbenchWindow().getWorkbench().getProgressService().getLongOperationTime());
            IRunnableWithProgress runnable = new IRunnableWithProgress(){

                public void run(IProgressMonitor pm) throws InvocationTargetException {
                    try {
                        OperationHistoryActionHandler.this.runCommand(pm);
                    }
                    catch (ExecutionException e) {
                        if (OperationHistoryActionHandler.this.pruning) {
                            OperationHistoryActionHandler.this.flush();
                        }
                        throw new InvocationTargetException(e);
                    }
                }
            };
            try {
                try {
                    boolean runInBackground = false;
                    if (this.getOperation() instanceof IAdvancedUndoableOperation2) {
                        runInBackground = ((IAdvancedUndoableOperation2)this.getOperation()).runInBackground();
                    }
                    this.progressDialog.run(runInBackground, true, runnable);
                }
                catch (InvocationTargetException e) {
                    Throwable t = e.getTargetException();
                    if (t == null) {
                        this.reportException(e);
                    } else {
                        this.reportException(t);
                    }
                    this.progressDialog = null;
                }
                catch (InterruptedException interruptedException) {
                    this.progressDialog = null;
                }
                catch (OperationCanceledException operationCanceledException) {
                    this.progressDialog = null;
                    break block13;
                    {
                        catch (Throwable throwable) {
                            throw throwable;
                        }
                    }
                }
            }
            finally {
                this.progressDialog = null;
            }
        }
    }

    abstract IStatus runCommand(IProgressMonitor var1) throws ExecutionException;

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.commands.operations.IUndoContext");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter.equals(clazz)) {
            return this.undoContext;
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.core.runtime.IProgressMonitor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter.equals(clazz2) && this.progressDialog != null) {
            return this.progressDialog.getProgressMonitor();
        }
        if (this.site != null) {
            Class<?> clazz3 = class$2;
            if (clazz3 == null) {
                try {
                    clazz3 = class$2 = Class.forName("org.eclipse.swt.widgets.Shell");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (adapter.equals(clazz3)) {
                return this.getWorkbenchWindow().getShell();
            }
            Class<?> clazz4 = class$3;
            if (clazz4 == null) {
                try {
                    clazz4 = class$3 = Class.forName("org.eclipse.ui.IWorkbenchWindow");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (adapter.equals(clazz4)) {
                return this.getWorkbenchWindow();
            }
            Class<?> clazz5 = class$4;
            if (clazz5 == null) {
                try {
                    clazz5 = class$4 = Class.forName("org.eclipse.ui.IWorkbenchPart");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (adapter.equals(clazz5)) {
                return this.site.getPart();
            }
            IWorkbenchPart part = this.site.getPart();
            if (part != null) {
                return Util.getAdapter(part, adapter);
            }
        }
        return null;
    }

    private IWorkbenchWindow getWorkbenchWindow() {
        if (this.site != null) {
            return this.site.getWorkbenchWindow();
        }
        return null;
    }

    abstract boolean shouldBeEnabled();

    public void setContext(IUndoContext context) {
        if (context == this.undoContext) {
            return;
        }
        this.undoContext = context;
        this.update();
    }

    public void setPruneHistory(boolean prune) {
        this.pruning = prune;
    }

    public void update() {
        String text;
        String tooltipText;
        if (this.isInvalid()) {
            return;
        }
        boolean enabled = this.shouldBeEnabled();
        if (enabled) {
            tooltipText = NLS.bind((String)this.getTooltipString(), (Object)this.getOperation().getLabel());
            text = NLS.bind((String)this.getCommandString(), (Object)this.shortenText(this.getOperation().getLabel()));
        } else {
            tooltipText = NLS.bind((String)WorkbenchMessages.Operations_undoRedoCommandDisabled, (Object)this.getSimpleTooltipString());
            text = this.getSimpleCommandString();
            if (this.undoContext != null && this.pruning) {
                this.flush();
            }
        }
        this.setText(text);
        this.setToolTipText(tooltipText);
        this.setEnabled(enabled);
    }

    private String shortenText(String message) {
        int length = message.length();
        if (length > 32) {
            StringBuffer result = new StringBuffer();
            int mid = 16;
            result.append(message.substring(0, mid));
            result.append("...");
            result.append(message.substring(length - mid));
            return result.toString();
        }
        return message;
    }

    final void reportException(Throwable t) {
        Throwable nestedException = StatusUtil.getCause(t);
        Throwable exception = nestedException == null ? t : nestedException;
        String exceptionMessage = exception.getMessage();
        if (exceptionMessage == null) {
            exceptionMessage = WorkbenchMessages.WorkbenchWindow_exceptionMessage;
        }
        IStatus status = StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, exceptionMessage, exception);
        WorkbenchPlugin.log(exceptionMessage, status);
        StatusUtil.handleStatus(status, 2, this.getWorkbenchWindow().getShell());
    }

    final boolean isInvalid() {
        return this.undoContext == null || this.site == null;
    }

    final IUndoContext getUndoContext() {
        return this.undoContext;
    }

    private class HistoryListener
    implements IOperationHistoryListener {
        private HistoryListener() {
        }

        public void historyNotification(OperationHistoryEvent event) {
            IWorkbenchWindow workbenchWindow = OperationHistoryActionHandler.this.getWorkbenchWindow();
            if (workbenchWindow == null) {
                return;
            }
            Display display = workbenchWindow.getWorkbench().getDisplay();
            if (display == null) {
                return;
            }
            switch (event.getEventType()) {
                case 5: 
                case 8: 
                case 9: 
                case 10: {
                    if (!event.getOperation().hasContext(OperationHistoryActionHandler.this.undoContext)) break;
                    display.asyncExec(new Runnable(this){
                        final /* synthetic */ HistoryListener this$1;
                        {
                            this.this$1 = historyListener;
                        }

                        public void run() {
                            HistoryListener.access$1(this.this$1).update();
                        }
                    });
                    break;
                }
                case 7: {
                    if (!event.getOperation().hasContext(OperationHistoryActionHandler.this.undoContext)) break;
                    display.asyncExec(new Runnable(this, event){
                        final /* synthetic */ HistoryListener this$1;
                        private final /* synthetic */ OperationHistoryEvent val$event;
                        {
                            this.this$1 = historyListener;
                            this.val$event = operationHistoryEvent;
                        }

                        public void run() {
                            if (OperationHistoryActionHandler.access$2(HistoryListener.access$1(this.this$1))) {
                                IStatus status = this.val$event.getStatus();
                                if (status == null || status.getSeverity() != 8) {
                                    HistoryListener.access$1(this.this$1).flush();
                                }
                                HistoryListener.access$1(this.this$1).update();
                            } else {
                                HistoryListener.access$1(this.this$1).update();
                            }
                        }
                    });
                    break;
                }
                case 6: {
                    if (event.getOperation() != OperationHistoryActionHandler.this.getOperation()) break;
                    display.asyncExec(new Runnable(this){
                        final /* synthetic */ HistoryListener this$1;
                        {
                            this.this$1 = historyListener;
                        }

                        public void run() {
                            HistoryListener.access$1(this.this$1).update();
                        }
                    });
                }
            }
        }

        static /* synthetic */ OperationHistoryActionHandler access$1(HistoryListener historyListener) {
            return historyListener.OperationHistoryActionHandler.this;
        }
    }

    private class PartListener
    implements IPartListener {
        private PartListener() {
        }

        public void partActivated(IWorkbenchPart part) {
        }

        public void partBroughtToTop(IWorkbenchPart part) {
        }

        public void partClosed(IWorkbenchPart part) {
            if (OperationHistoryActionHandler.this.site != null && part.equals(OperationHistoryActionHandler.this.site.getPart())) {
                OperationHistoryActionHandler.this.dispose();
            } else if (OperationHistoryActionHandler.this.site instanceof MultiPageEditorSite && part.equals(((MultiPageEditorSite)OperationHistoryActionHandler.this.site).getMultiPageEditor())) {
                OperationHistoryActionHandler.this.dispose();
            }
        }

        public void partDeactivated(IWorkbenchPart part) {
        }

        public void partOpened(IWorkbenchPart part) {
        }
    }
}

