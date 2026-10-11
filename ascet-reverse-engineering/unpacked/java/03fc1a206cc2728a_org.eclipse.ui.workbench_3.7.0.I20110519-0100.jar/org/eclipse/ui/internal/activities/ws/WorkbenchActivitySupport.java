/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.dialogs.ProgressMonitorDialog
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.activities.ws;

import java.lang.reflect.InvocationTargetException;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.dialogs.ProgressMonitorDialog;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.ActivityManagerEvent;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.activities.IActivityManagerListener;
import org.eclipse.ui.activities.ICategory;
import org.eclipse.ui.activities.IMutableActivityManager;
import org.eclipse.ui.activities.ITriggerPointAdvisor;
import org.eclipse.ui.activities.ITriggerPointManager;
import org.eclipse.ui.activities.IWorkbenchActivitySupport;
import org.eclipse.ui.activities.WorkbenchTriggerPointAdvisor;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.activities.MutableActivityManager;
import org.eclipse.ui.internal.activities.ProxyActivityManager;
import org.eclipse.ui.internal.activities.ws.ActivityMessages;
import org.eclipse.ui.internal.activities.ws.ImageBindingRegistry;
import org.eclipse.ui.internal.activities.ws.TriggerPointAdvisorDescriptor;
import org.eclipse.ui.internal.activities.ws.TriggerPointAdvisorRegistry;
import org.eclipse.ui.internal.activities.ws.TriggerPointManager;
import org.eclipse.ui.internal.activities.ws.WorkbenchActivitySupport;
import org.eclipse.ui.internal.misc.StatusUtil;

public class WorkbenchActivitySupport
implements IWorkbenchActivitySupport,
IExtensionChangeHandler {
    private MutableActivityManager mutableActivityManager;
    private ProxyActivityManager proxyActivityManager;
    private ImageBindingRegistry activityImageBindingRegistry;
    private ImageBindingRegistry categoryImageBindingRegistry;
    private ITriggerPointManager triggerPointManager = new TriggerPointManager();
    private ITriggerPointAdvisor advisor;
    static /* synthetic */ Class class$0;

    public WorkbenchActivitySupport() {
        IExtensionTracker tracker = PlatformUI.getWorkbench().getExtensionTracker();
        tracker.registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getActivitySupportExtensionPoint()));
        this.mutableActivityManager = new MutableActivityManager(this.getTriggerPointAdvisor());
        this.proxyActivityManager = new ProxyActivityManager(this.mutableActivityManager);
        this.mutableActivityManager.addActivityManagerListener(new IActivityManagerListener(){
            private Set lastEnabled;
            {
                this.lastEnabled = new HashSet(WorkbenchActivitySupport.this.mutableActivityManager.getEnabledActivityIds());
            }

            public void activityManagerChanged(ActivityManagerEvent activityManagerEvent) {
                Set activityIds = WorkbenchActivitySupport.this.mutableActivityManager.getEnabledActivityIds();
                if (!activityIds.equals(this.lastEnabled)) {
                    this.lastEnabled = new HashSet(activityIds);
                    if (!PlatformUI.isWorkbenchRunning()) {
                        return;
                    }
                    IWorkbench workbench = PlatformUI.getWorkbench();
                    IWorkbenchWindow[] windows = workbench.getWorkbenchWindows();
                    int i = 0;
                    while (i < windows.length) {
                        if (windows[i] instanceof WorkbenchWindow) {
                            WorkbenchWindow window = (WorkbenchWindow)windows[i];
                            ProgressMonitorDialog dialog = new ProgressMonitorDialog(window.getShell());
                            IRunnableWithProgress runnable = new IRunnableWithProgress(this, workbench, window, dialog){
                                private long openTime;
                                private boolean dialogOpened;
                                final /* synthetic */ 1 this$1;
                                private final /* synthetic */ IWorkbench val$workbench;
                                private final /* synthetic */ WorkbenchWindow val$window;
                                private final /* synthetic */ ProgressMonitorDialog val$dialog;
                                {
                                    this.this$1 = var1_1;
                                    this.val$workbench = iWorkbench;
                                    this.val$window = workbenchWindow;
                                    this.val$dialog = progressMonitorDialog;
                                    this.dialogOpened = false;
                                }

                                public void run(IProgressMonitor monitor) {
                                    this.openTime = System.currentTimeMillis() + (long)this.val$workbench.getProgressService().getLongOperationTime();
                                    monitor.beginTask(ActivityMessages.ManagerTask, 2);
                                    monitor.subTask(ActivityMessages.ManagerWindowSubTask);
                                    this.updateWindowBars(this.val$window);
                                    monitor.worked(1);
                                    monitor.subTask(ActivityMessages.ManagerViewsSubTask);
                                    IWorkbenchPage[] pages = this.val$window.getPages();
                                    int j = 0;
                                    while (j < pages.length) {
                                        IWorkbenchPage page = pages[j];
                                        IViewReference[] refs = page.getViewReferences();
                                        int k = 0;
                                        while (k < refs.length) {
                                            IViewPart part = refs[k].getView(false);
                                            if (part != null) {
                                                this.updateViewBars(part);
                                            }
                                            ++k;
                                        }
                                        ++j;
                                    }
                                    monitor.worked(1);
                                    monitor.done();
                                }

                                private void updateViewBars(IViewPart part) {
                                    IViewSite viewSite = part.getViewSite();
                                    if (viewSite == null) {
                                        return;
                                    }
                                    IActionBars bars = viewSite.getActionBars();
                                    IMenuManager manager = bars.getMenuManager();
                                    if (manager != null) {
                                        this.updateManager((IContributionManager)manager);
                                    }
                                    if ((manager = bars.getToolBarManager()) != null) {
                                        this.updateManager((IContributionManager)manager);
                                    }
                                    if ((manager = bars.getStatusLineManager()) != null) {
                                        this.updateManager((IContributionManager)manager);
                                    }
                                }

                                private void updateWindowBars(WorkbenchWindow window) {
                                    MenuManager manager = window.getMenuBarManager();
                                    if (manager != null) {
                                        this.updateManager((IContributionManager)manager);
                                    }
                                    if ((manager = window.getCoolBarManager2()) != null) {
                                        this.updateManager((IContributionManager)manager);
                                    }
                                    if ((manager = window.getToolBarManager2()) != null) {
                                        this.updateManager((IContributionManager)manager);
                                    }
                                    if ((manager = window.getStatusLineManager()) != null) {
                                        this.updateManager((IContributionManager)manager);
                                    }
                                }

                                private void updateManager(IContributionManager manager) {
                                    if (!this.dialogOpened && System.currentTimeMillis() > this.openTime) {
                                        this.val$dialog.open();
                                        this.dialogOpened = true;
                                    }
                                    manager.update(true);
                                }
                            };
                            dialog.setOpenOnRun(false);
                            workbench.getDisplay().asyncExec(new Runnable(this, workbench, dialog, runnable){
                                final /* synthetic */ 1 this$1;
                                private final /* synthetic */ IWorkbench val$workbench;
                                private final /* synthetic */ ProgressMonitorDialog val$dialog;
                                private final /* synthetic */ IRunnableWithProgress val$runnable;
                                {
                                    this.this$1 = var1_1;
                                    this.val$workbench = iWorkbench;
                                    this.val$dialog = progressMonitorDialog;
                                    this.val$runnable = iRunnableWithProgress;
                                }

                                public void run() {
                                    BusyIndicator.showWhile((Display)this.val$workbench.getDisplay(), (Runnable)new Runnable(this, this.val$dialog, this.val$runnable){
                                        final /* synthetic */ 3 this$2;
                                        private final /* synthetic */ ProgressMonitorDialog val$dialog;
                                        private final /* synthetic */ IRunnableWithProgress val$runnable;
                                        {
                                            this.this$2 = var1_1;
                                            this.val$dialog = progressMonitorDialog;
                                            this.val$runnable = iRunnableWithProgress;
                                        }

                                        public void run() {
                                            try {
                                                this.val$dialog.run(false, false, this.val$runnable);
                                            }
                                            catch (InvocationTargetException e) {
                                                1.access$0(3.access$0(this.this$2), e);
                                            }
                                            catch (InterruptedException e) {
                                                1.access$0(3.access$0(this.this$2), e);
                                            }
                                        }
                                    });
                                }

                                static /* synthetic */ 1 access$0(3 var0) {
                                    return var0.this$1;
                                }
                            });
                        }
                        ++i;
                    }
                }
            }

            private void log(Exception e) {
                StatusUtil.newStatus(4, "Could not update contribution managers", (Throwable)e);
            }

            static /* synthetic */ void access$0(1 var0, Exception exception) {
                var0.log(exception);
            }
        });
    }

    public IActivityManager getActivityManager() {
        return this.proxyActivityManager;
    }

    public void setEnabledActivityIds(Set enabledActivityIds) {
        this.mutableActivityManager.setEnabledActivityIds(enabledActivityIds);
    }

    public ImageDescriptor getImageDescriptor(IActivity activity) {
        ImageDescriptor descriptor;
        if (activity.isDefined() && (descriptor = this.getActivityImageBindingRegistry().getImageDescriptor(activity.getId())) != null) {
            return descriptor;
        }
        return WorkbenchImages.getImageDescriptor("IMG_OBJ_ACTIVITY");
    }

    public ImageDescriptor getImageDescriptor(ICategory category) {
        ImageDescriptor descriptor;
        if (category.isDefined() && (descriptor = this.getCategoryImageBindingRegistry().getImageDescriptor(category.getId())) != null) {
            return descriptor;
        }
        return WorkbenchImages.getImageDescriptor("IMG_OBJ_ACTIVITY_CATEGORY");
    }

    private ImageBindingRegistry getActivityImageBindingRegistry() {
        if (this.activityImageBindingRegistry == null) {
            this.activityImageBindingRegistry = new ImageBindingRegistry("activityImageBinding");
            PlatformUI.getWorkbench().getExtensionTracker().registerHandler((IExtensionChangeHandler)this.activityImageBindingRegistry, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getActivitySupportExtensionPoint()));
        }
        return this.activityImageBindingRegistry;
    }

    private ImageBindingRegistry getCategoryImageBindingRegistry() {
        if (this.categoryImageBindingRegistry == null) {
            this.categoryImageBindingRegistry = new ImageBindingRegistry("categoryImageBinding");
            PlatformUI.getWorkbench().getExtensionTracker().registerHandler((IExtensionChangeHandler)this.categoryImageBindingRegistry, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getActivitySupportExtensionPoint()));
        }
        return this.categoryImageBindingRegistry;
    }

    public void dispose() {
        if (this.activityImageBindingRegistry != null) {
            this.activityImageBindingRegistry.dispose();
            PlatformUI.getWorkbench().getExtensionTracker().unregisterHandler((IExtensionChangeHandler)this.activityImageBindingRegistry);
        }
        if (this.categoryImageBindingRegistry != null) {
            this.categoryImageBindingRegistry.dispose();
            PlatformUI.getWorkbench().getExtensionTracker().unregisterHandler((IExtensionChangeHandler)this.categoryImageBindingRegistry);
        }
        PlatformUI.getWorkbench().getExtensionTracker().unregisterHandler((IExtensionChangeHandler)this);
    }

    public ITriggerPointAdvisor getTriggerPointAdvisor() {
        TriggerPointAdvisorDescriptor descriptor;
        if (this.advisor != null) {
            return this.advisor;
        }
        IProduct product = Platform.getProduct();
        if (product != null && (descriptor = TriggerPointAdvisorRegistry.getInstance().getAdvisorForProduct(product.getId())) != null) {
            try {
                this.advisor = descriptor.createAdvisor();
            }
            catch (CoreException e) {
                WorkbenchPlugin.log("could not create trigger point advisor", e);
            }
        }
        if (this.advisor == null) {
            this.advisor = new WorkbenchTriggerPointAdvisor();
        }
        return this.advisor;
    }

    public ITriggerPointManager getTriggerPointManager() {
        return this.triggerPointManager;
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
        if (this.advisor != null) {
            Class<?> clazz = this.advisor.getClass();
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.ui.activities.WorkbenchTriggerPointAdvisor");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz.equals(clazz2)) {
                this.advisor = null;
            }
        }
    }

    private IExtensionPoint getActivitySupportExtensionPoint() {
        return Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "activitySupport");
    }

    public void removeExtension(IExtension extension, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            if (objects[i] == this.advisor) {
                this.advisor = null;
                break;
            }
            ++i;
        }
    }

    public IMutableActivityManager createWorkingCopy() {
        MutableActivityManager clone = (MutableActivityManager)this.mutableActivityManager.clone();
        clone.unhookRegistryListeners();
        return clone;
    }
}

