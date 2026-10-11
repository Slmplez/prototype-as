/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.IJobChangeEvent
 *  org.eclipse.core.runtime.jobs.IJobChangeListener
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.JobChangeAdapter
 *  org.eclipse.jface.viewers.AbstractTreeViewer
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.progress;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.jface.viewers.AbstractTreeViewer;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.model.IWorkbenchAdapter;
import org.eclipse.ui.progress.IDeferredWorkbenchAdapter;
import org.eclipse.ui.progress.IElementCollector;
import org.eclipse.ui.progress.IWorkbenchSiteProgressService;
import org.eclipse.ui.progress.PendingUpdateAdapter;
import org.eclipse.ui.progress.WorkbenchJob;

public class DeferredTreeContentManager {
    AbstractTreeViewer treeViewer;
    IWorkbenchSiteProgressService progressService;
    private ListenerList updateCompleteListenerList;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public DeferredTreeContentManager(ITreeContentProvider provider, AbstractTreeViewer viewer, IWorkbenchPartSite site) {
        this(viewer, site);
    }

    public DeferredTreeContentManager(ITreeContentProvider provider, AbstractTreeViewer viewer) {
        this(viewer);
    }

    public DeferredTreeContentManager(AbstractTreeViewer viewer, IWorkbenchPartSite site) {
        this(viewer);
        Object siteService;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.progress.IWorkbenchSiteProgressService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((siteService = Util.getAdapter(site, clazz)) != null) {
            this.progressService = (IWorkbenchSiteProgressService)siteService;
        }
    }

    public DeferredTreeContentManager(AbstractTreeViewer viewer) {
        this.treeViewer = viewer;
    }

    public boolean mayHaveChildren(Object element) {
        Assert.isNotNull((Object)element, (String)ProgressMessages.DeferredTreeContentManager_NotDeferred);
        IDeferredWorkbenchAdapter adapter = this.getAdapter(element);
        return adapter != null && adapter.isContainer();
    }

    public Object[] getChildren(Object parent) {
        IDeferredWorkbenchAdapter element = this.getAdapter(parent);
        if (element == null) {
            return null;
        }
        PendingUpdateAdapter placeholder = this.createPendingUpdateAdapter();
        this.startFetchingDeferredChildren(parent, element, placeholder);
        return new Object[]{placeholder};
    }

    protected PendingUpdateAdapter createPendingUpdateAdapter() {
        return new PendingUpdateAdapter();
    }

    protected IDeferredWorkbenchAdapter getAdapter(Object element) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.progress.IDeferredWorkbenchAdapter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IDeferredWorkbenchAdapter)Util.getAdapter(element, clazz);
    }

    protected void startFetchingDeferredChildren(final Object parent, final IDeferredWorkbenchAdapter adapter, final PendingUpdateAdapter placeholder) {
        final IElementCollector collector = this.createElementCollector(parent, placeholder);
        this.cancel(parent);
        String jobName = this.getFetchJobName(parent, adapter);
        Job job = new Job(jobName){

            public IStatus run(IProgressMonitor monitor) {
                adapter.fetchDeferredChildren(parent, collector, monitor);
                if (monitor.isCanceled()) {
                    return Status.CANCEL_STATUS;
                }
                return Status.OK_STATUS;
            }

            public boolean belongsTo(Object family) {
                if (family instanceof DeferredContentFamily) {
                    DeferredContentFamily contentFamily = (DeferredContentFamily)family;
                    if (contentFamily.manager == DeferredTreeContentManager.this) {
                        return this.isParent(contentFamily, parent);
                    }
                }
                return false;
            }

            private boolean isParent(DeferredContentFamily family, Object child) {
                if (family.element.equals(child)) {
                    return true;
                }
                IWorkbenchAdapter workbenchAdapter = this.getWorkbenchAdapter(child);
                if (workbenchAdapter == null) {
                    return false;
                }
                Object elementParent = workbenchAdapter.getParent(child);
                if (elementParent == null) {
                    return false;
                }
                return this.isParent(family, elementParent);
            }

            private IWorkbenchAdapter getWorkbenchAdapter(Object element) {
                Class<?> clazz = class$2;
                if (clazz == null) {
                    try {
                        clazz = class$2 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                return (IWorkbenchAdapter)Util.getAdapter(element, clazz);
            }
        };
        job.addJobChangeListener((IJobChangeListener)new JobChangeAdapter(){

            public void done(IJobChangeEvent event) {
                DeferredTreeContentManager.this.runClearPlaceholderJob(placeholder);
            }
        });
        job.setRule(adapter.getRule(parent));
        if (this.progressService == null) {
            job.schedule();
        } else {
            this.progressService.schedule(job);
        }
    }

    protected String getFetchJobName(Object parent, IDeferredWorkbenchAdapter adapter) {
        return NLS.bind((String)ProgressMessages.DeferredTreeContentManager_FetchingName, (Object)adapter.getLabel(parent));
    }

    protected void addChildren(final Object parent, final Object[] children, IProgressMonitor monitor) {
        WorkbenchJob updateJob = new WorkbenchJob(ProgressMessages.DeferredTreeContentManager_AddingChildren){

            public IStatus runInUIThread(IProgressMonitor updateMonitor) {
                if (DeferredTreeContentManager.this.treeViewer.getControl().isDisposed() || updateMonitor.isCanceled()) {
                    return Status.CANCEL_STATUS;
                }
                DeferredTreeContentManager.this.treeViewer.add(parent, children);
                return Status.OK_STATUS;
            }
        };
        updateJob.setSystem(true);
        updateJob.schedule();
    }

    public boolean isDeferredAdapter(Object element) {
        return this.getAdapter(element) != null;
    }

    protected void runClearPlaceholderJob(final PendingUpdateAdapter placeholder) {
        if (placeholder.isRemoved() || !PlatformUI.isWorkbenchRunning()) {
            return;
        }
        WorkbenchJob clearJob = new WorkbenchJob(ProgressMessages.DeferredTreeContentManager_ClearJob){

            public IStatus runInUIThread(IProgressMonitor monitor) {
                if (!placeholder.isRemoved()) {
                    Control control = DeferredTreeContentManager.this.treeViewer.getControl();
                    if (control.isDisposed()) {
                        return Status.CANCEL_STATUS;
                    }
                    DeferredTreeContentManager.this.treeViewer.remove((Object)placeholder);
                    placeholder.setRemoved(true);
                }
                return Status.OK_STATUS;
            }
        };
        clearJob.setSystem(true);
        if (this.updateCompleteListenerList != null) {
            Object[] listeners = this.updateCompleteListenerList.getListeners();
            int i = 0;
            while (i < listeners.length) {
                clearJob.addJobChangeListener((IJobChangeListener)listeners[i]);
                ++i;
            }
        }
        clearJob.schedule();
    }

    public void cancel(Object parent) {
        if (parent == null) {
            return;
        }
        Job.getJobManager().cancel((Object)new DeferredContentFamily(this, parent));
    }

    protected IElementCollector createElementCollector(final Object parent, final PendingUpdateAdapter placeholder) {
        return new IElementCollector(){

            public void add(Object element, IProgressMonitor monitor) {
                this.add(new Object[]{element}, monitor);
            }

            public void add(Object[] elements, IProgressMonitor monitor) {
                DeferredTreeContentManager.this.addChildren(parent, elements, monitor);
            }

            public void done() {
                DeferredTreeContentManager.this.runClearPlaceholderJob(placeholder);
            }
        };
    }

    public void addUpdateCompleteListener(IJobChangeListener listener) {
        if (listener == null && this.updateCompleteListenerList != null) {
            Object[] listeners = this.updateCompleteListenerList.getListeners();
            if (listeners.length == 1) {
                this.removeUpdateCompleteListener((IJobChangeListener)listeners[0]);
            }
        } else {
            if (this.updateCompleteListenerList == null) {
                this.updateCompleteListenerList = new ListenerList();
            }
            this.updateCompleteListenerList.add((Object)listener);
        }
    }

    public void removeUpdateCompleteListener(IJobChangeListener listener) {
        if (this.updateCompleteListenerList != null) {
            this.updateCompleteListenerList.remove((Object)listener);
        }
    }

    class DeferredContentFamily {
        protected DeferredTreeContentManager manager;
        protected Object element;

        DeferredContentFamily(DeferredTreeContentManager schedulingManager, Object object) {
            this.manager = schedulingManager;
            this.element = object;
        }
    }
}

