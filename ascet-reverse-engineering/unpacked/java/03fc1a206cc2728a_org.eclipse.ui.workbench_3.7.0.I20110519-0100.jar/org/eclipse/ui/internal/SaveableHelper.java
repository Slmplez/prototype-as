/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.core.runtime.jobs.IJobChangeEvent
 *  org.eclipse.core.runtime.jobs.IJobChangeListener
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.JobChangeAdapter
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.operation.IRunnableContext
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.ISaveablePart2;
import org.eclipse.ui.ISaveablesSource;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.Saveable;
import org.eclipse.ui.internal.SaveablesList;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.dialogs.EventLoopProgressMonitor;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.progress.IJobRunnable;
import org.eclipse.ui.progress.IWorkbenchSiteProgressService;

public class SaveableHelper {
    public static final int USER_RESPONSE = -1;
    private static int AutomatedResponse = -1;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public static void testSetAutomatedResponse(int response) {
        AutomatedResponse = response;
    }

    public static int testGetAutomatedResponse() {
        return AutomatedResponse;
    }

    static boolean savePart(final ISaveablePart saveable, IWorkbenchPart part, IWorkbenchWindow window, boolean confirm) {
        if (!saveable.isDirty()) {
            return true;
        }
        if (confirm) {
            int choice = AutomatedResponse;
            if (choice == -1) {
                if (saveable instanceof ISaveablePart2) {
                    choice = ((ISaveablePart2)saveable).promptToSaveOnClose();
                }
                if (choice == -1 || choice == 3) {
                    String message = NLS.bind((String)WorkbenchMessages.EditorManager_saveChangesQuestion, (Object)part.getTitle());
                    String[] buttons = new String[]{IDialogConstants.YES_LABEL, IDialogConstants.NO_LABEL, IDialogConstants.CANCEL_LABEL};
                    MessageDialog d = new MessageDialog(window.getShell(), WorkbenchMessages.Save_Resource, null, message, 3, buttons, 0){

                        protected int getShellStyle() {
                            return super.getShellStyle() | 0x10000000;
                        }
                    };
                    choice = d.open();
                }
            }
            switch (choice) {
                case 0: {
                    break;
                }
                case 1: {
                    return true;
                }
                default: {
                    return false;
                }
            }
        }
        if (saveable instanceof ISaveablesSource) {
            return SaveableHelper.saveModels((ISaveablesSource)((Object)saveable), window, confirm);
        }
        IRunnableWithProgress progressOp = new IRunnableWithProgress(){

            public void run(IProgressMonitor monitor) {
                EventLoopProgressMonitor monitorWrap = new EventLoopProgressMonitor(monitor);
                saveable.doSave((IProgressMonitor)monitorWrap);
            }
        };
        return SaveableHelper.runProgressMonitorOperation(WorkbenchMessages.Save, progressOp, window);
    }

    private static boolean saveModels(ISaveablesSource modelSource, final IWorkbenchWindow window, final boolean confirm) {
        Saveable[] selectedModels = modelSource.getActiveSaveables();
        final ArrayList<Saveable> dirtyModels = new ArrayList<Saveable>();
        int i = 0;
        while (i < selectedModels.length) {
            Saveable model = selectedModels[i];
            if (model.isDirty()) {
                dirtyModels.add(model);
            }
            ++i;
        }
        if (dirtyModels.isEmpty()) {
            return true;
        }
        IRunnableWithProgress progressOp = new IRunnableWithProgress(){

            public void run(IProgressMonitor monitor) {
                EventLoopProgressMonitor monitorWrap = new EventLoopProgressMonitor(monitor);
                monitorWrap.beginTask(WorkbenchMessages.Save, dirtyModels.size());
                try {
                    Iterator i = dirtyModels.iterator();
                    while (i.hasNext()) {
                        Saveable model = (Saveable)i.next();
                        if (!model.isDirty()) {
                            monitor.worked(1);
                            continue;
                        }
                        SaveableHelper.doSaveModel(model, (IProgressMonitor)new SubProgressMonitor((IProgressMonitor)monitorWrap, 1), window, confirm);
                        if (!monitor.isCanceled()) continue;
                        break;
                    }
                }
                finally {
                    monitorWrap.done();
                }
            }
        };
        return SaveableHelper.runProgressMonitorOperation(WorkbenchMessages.Save, progressOp, window);
    }

    static int savePart(final ISaveablePart2 saveable, IWorkbenchWindow window, boolean confirm) {
        IRunnableWithProgress progressOp;
        if (!saveable.isDirty()) {
            return 0;
        }
        if (confirm) {
            int choice = AutomatedResponse;
            if (choice == -1) {
                choice = saveable.promptToSaveOnClose();
            }
            if (choice != 0) {
                return choice == -1 ? 3 : choice;
            }
        }
        if (!SaveableHelper.runProgressMonitorOperation(WorkbenchMessages.Save, progressOp = new IRunnableWithProgress(){

            public void run(IProgressMonitor monitor) {
                EventLoopProgressMonitor monitorWrap = new EventLoopProgressMonitor(monitor);
                saveable.doSave((IProgressMonitor)monitorWrap);
            }
        }, window)) {
            return 2;
        }
        return 0;
    }

    static boolean runProgressMonitorOperation(String opName, IRunnableWithProgress progressOp, IWorkbenchWindow window) {
        return SaveableHelper.runProgressMonitorOperation(opName, progressOp, window, window);
    }

    static boolean runProgressMonitorOperation(String opName, final IRunnableWithProgress progressOp, IRunnableContext runnableContext, IShellProvider shellProvider) {
        final boolean[] success = new boolean[1];
        IRunnableWithProgress runnable = new IRunnableWithProgress(){

            public void run(IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
                progressOp.run(monitor);
                if (!monitor.isCanceled()) {
                    success[0] = true;
                }
            }
        };
        try {
            runnableContext.run(false, true, runnable);
        }
        catch (InvocationTargetException e) {
            String title = NLS.bind((String)WorkbenchMessages.EditorManager_operationFailed, (Object)opName);
            Throwable targetExc = e.getTargetException();
            WorkbenchPlugin.log(title, (IStatus)new Status(2, "org.eclipse.ui", 0, title, targetExc));
            StatusUtil.handleStatus(title, targetExc, 2, shellProvider.getShell());
        }
        catch (InterruptedException interruptedException) {
        }
        catch (OperationCanceledException operationCanceledException) {}
        return success[0];
    }

    public static boolean needsSave(ISaveablesSource modelSource) {
        Saveable[] selectedModels = modelSource.getActiveSaveables();
        int i = 0;
        while (i < selectedModels.length) {
            Saveable model = selectedModels[i];
            if (model.isDirty() && !model.isSavingInBackground()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void doSaveModel(final Saveable model, IProgressMonitor progressMonitor, final IShellProvider shellProvider, boolean blockUntilSaved) {
        try {
            IJobRunnable[] backgroundSaveRunnable;
            block20: {
                block21: {
                    SubMonitor subMonitor;
                    block19: {
                        block23: {
                            block25: {
                                block24: {
                                    Job backgroundSaveJob = model.getBackgroundSaveJob();
                                    if (backgroundSaveJob == null) break block23;
                                    boolean canceled = SaveableHelper.waitForBackgroundSaveJob(model);
                                    if (!canceled) break block24;
                                    progressMonitor.setCanceled(true);
                                    break block25;
                                }
                                if (model.isDirty()) break block23;
                            }
                            progressMonitor.done();
                            return;
                        }
                        backgroundSaveRunnable = new IJobRunnable[1];
                        subMonitor = SubMonitor.convert((IProgressMonitor)progressMonitor, (int)3);
                        backgroundSaveRunnable[0] = model.doSave((IProgressMonitor)subMonitor.newChild(2), shellProvider);
                        if (backgroundSaveRunnable[0] != null) break block19;
                        progressMonitor.done();
                        return;
                    }
                    if (!blockUntilSaved) break block20;
                    IStatus result = backgroundSaveRunnable[0].run((IProgressMonitor)subMonitor.newChild(1));
                    if (result.isOK()) break block21;
                    StatusUtil.handleStatus(result, 2, shellProvider.getShell());
                    progressMonitor.setCanceled(true);
                }
                progressMonitor.done();
                return;
            }
            try {
                Job saveJob = new Job(NLS.bind((String)WorkbenchMessages.EditorManager_backgroundSaveJobName, (Object)model.getName())){

                    public boolean belongsTo(Object family) {
                        if (family instanceof DynamicFamily) {
                            return ((DynamicFamily)family).contains(model);
                        }
                        return family.equals(model);
                    }

                    protected IStatus run(IProgressMonitor monitor) {
                        return backgroundSaveRunnable[0].run(monitor);
                    }
                };
                model.setBackgroundSaveJob(saveJob);
                IWorkbench iWorkbench = PlatformUI.getWorkbench();
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                SaveablesList saveablesList = (SaveablesList)iWorkbench.getService(clazz);
                final IWorkbenchPart[] parts = saveablesList.getPartsForSaveable(model);
                int i = 0;
                while (i < parts.length) {
                    IWorkbenchPart workbenchPart = parts[i];
                    IWorkbenchPartSite iWorkbenchPartSite = workbenchPart.getSite();
                    Class<?> clazz2 = class$1;
                    if (clazz2 == null) {
                        try {
                            clazz2 = Class.forName("org.eclipse.ui.progress.IWorkbenchSiteProgressService");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    IWorkbenchSiteProgressService progressService = (IWorkbenchSiteProgressService)iWorkbenchPartSite.getAdapter(clazz2);
                    progressService.showBusyForFamily(model);
                    ++i;
                }
                model.disableUI(parts, blockUntilSaved);
                saveJob.addJobChangeListener((IJobChangeListener)new JobChangeAdapter(){

                    public void done(IJobChangeEvent event) {
                        model.setBackgroundSaveJob(null);
                        shellProvider.getShell().getDisplay().asyncExec(new Runnable(this, parts, model){
                            final /* synthetic */ 7 this$1;
                            private final /* synthetic */ IWorkbenchPart[] val$parts;
                            private final /* synthetic */ Saveable val$model;
                            {
                                this.this$1 = var1_1;
                                this.val$parts = iWorkbenchPartArray;
                                this.val$model = saveable;
                            }

                            public void run() {
                                SaveableHelper.access$0(this.val$parts);
                                this.val$model.enableUI(this.val$parts);
                            }
                        });
                    }
                });
                saveJob.schedule();
                SaveableHelper.notifySaveAction(parts);
                return;
            }
            catch (CoreException e) {
                StatusUtil.handleStatus(e.getStatus(), 2, shellProvider.getShell());
                progressMonitor.setCanceled(true);
                return;
            }
        }
        catch (Throwable throwable) {
            throw throwable;
        }
        finally {
            progressMonitor.done();
        }
    }

    private static void notifySaveAction(IWorkbenchPart[] parts) {
        HashSet<IWorkbenchWindow> wwindows = new HashSet<IWorkbenchWindow>();
        int i = 0;
        while (i < parts.length) {
            wwindows.add(parts[i].getSite().getWorkbenchWindow());
            ++i;
        }
        Iterator it = wwindows.iterator();
        while (it.hasNext()) {
            WorkbenchWindow wwin = (WorkbenchWindow)it.next();
            wwin.fireBackgroundSaveStarted();
        }
    }

    private static boolean waitForBackgroundSaveJob(Saveable model) {
        ArrayList<Saveable> models = new ArrayList<Saveable>();
        models.add(model);
        return SaveableHelper.waitForBackgroundSaveJobs(models);
    }

    public static boolean waitForBackgroundSaveJobs(final List modelsToSave) {
        try {
            PlatformUI.getWorkbench().getProgressService().busyCursorWhile(new IRunnableWithProgress(){

                public void run(IProgressMonitor monitor) throws InterruptedException {
                    Job.getJobManager().join((Object)new DynamicFamily((Collection)modelsToSave), monitor);
                }
            });
        }
        catch (InvocationTargetException e) {
            StatusUtil.handleStatus(e, 3);
        }
        catch (InterruptedException interruptedException) {
            return true;
        }
        Iterator it = modelsToSave.iterator();
        while (it.hasNext()) {
            Saveable model = (Saveable)it.next();
            if (model.isDirty()) continue;
            it.remove();
        }
        return false;
    }

    static /* synthetic */ void access$0(IWorkbenchPart[] iWorkbenchPartArray) {
        SaveableHelper.notifySaveAction(iWorkbenchPartArray);
    }

    private static class DynamicFamily
    extends HashSet {
        private static final long serialVersionUID = 1L;

        public DynamicFamily(Collection collection) {
            super(collection);
        }
    }
}

