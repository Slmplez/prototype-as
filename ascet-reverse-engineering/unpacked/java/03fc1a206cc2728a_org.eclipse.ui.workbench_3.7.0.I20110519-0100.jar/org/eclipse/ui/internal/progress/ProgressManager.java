/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IProgressMonitorWithBlocking
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.IJobChangeEvent
 *  org.eclipse.core.runtime.jobs.IJobChangeListener
 *  org.eclipse.core.runtime.jobs.IJobManager
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.JobChangeAdapter
 *  org.eclipse.core.runtime.jobs.ProgressProvider
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogBlockedHandler
 *  org.eclipse.jface.operation.IRunnableContext
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.ImageRegistry
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.ImageLoader
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.progress;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IProgressMonitorWithBlocking;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobChangeEvent;
import org.eclipse.core.runtime.jobs.IJobChangeListener;
import org.eclipse.core.runtime.jobs.IJobManager;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.JobChangeAdapter;
import org.eclipse.core.runtime.jobs.ProgressProvider;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogBlockedHandler;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.ImageLoader;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.EventLoopProgressMonitor;
import org.eclipse.ui.internal.dialogs.WorkbenchDialogBlockedHandler;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.progress.FinishedJobs;
import org.eclipse.ui.internal.progress.GroupInfo;
import org.eclipse.ui.internal.progress.IJobBusyListener;
import org.eclipse.ui.internal.progress.IJobProgressManagerListener;
import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.progress.ProgressMonitorFocusJobDialog;
import org.eclipse.ui.internal.progress.ProgressMonitorJobsDialog;
import org.eclipse.ui.internal.progress.ProgressViewUpdater;
import org.eclipse.ui.internal.progress.StatusAdapterHelper;
import org.eclipse.ui.internal.progress.TaskInfo;
import org.eclipse.ui.progress.IProgressConstants;
import org.eclipse.ui.progress.IProgressService;
import org.eclipse.ui.progress.WorkbenchJob;
import org.eclipse.ui.statushandlers.StatusAdapter;
import org.eclipse.ui.statushandlers.StatusManager;

public class ProgressManager
extends ProgressProvider
implements IProgressService {
    public static final QualifiedName PROPERTY_IN_DIALOG = IProgressConstants.PROPERTY_IN_DIALOG;
    private static final String ERROR_JOB = "errorstate.gif";
    static final String ERROR_JOB_KEY = "ERROR_JOB";
    private static ProgressManager singleton;
    private final Map jobs = Collections.synchronizedMap(new HashMap());
    private final Map familyListeners = Collections.synchronizedMap(new HashMap());
    private ListenerList listeners = new ListenerList();
    final IJobChangeListener changeListener;
    static final String PROGRESS_VIEW_NAME = "org.eclipse.ui.views.ProgressView";
    static final String PROGRESS_FOLDER = "$nl$/icons/full/progress/";
    private static final String SLEEPING_JOB = "sleeping.gif";
    private static final String WAITING_JOB = "waiting.gif";
    private static final String BLOCKED_JOB = "lockedstate.gif";
    public static final String SLEEPING_JOB_KEY = "SLEEPING_JOB";
    public static final String WAITING_JOB_KEY = "WAITING_JOB";
    public static final String BLOCKED_JOB_KEY = "LOCKED_JOB";
    final Map runnableMonitors = Collections.synchronizedMap(new HashMap());
    private Hashtable imageKeyTable = new Hashtable();
    private final StatusManager.INotificationListener notificationListener;
    private static final String IMAGE_KEY = "org.eclipse.ui.progress.images";
    static /* synthetic */ Class class$0;

    public static ProgressManager getInstance() {
        if (singleton == null) {
            singleton = new ProgressManager();
        }
        return singleton;
    }

    public static void shutdownProgressManager() {
        if (singleton == null) {
            return;
        }
        StatusManager.getManager().removeListener(ProgressManager.singleton.notificationListener);
        singleton.shutdown();
    }

    ProgressManager() {
        Dialog.setBlockedHandler((IDialogBlockedHandler)new WorkbenchDialogBlockedHandler());
        this.setUpImages();
        this.changeListener = this.createChangeListener();
        this.notificationListener = this.createNotificationListener();
        Job.getJobManager().setProgressProvider((ProgressProvider)this);
        Job.getJobManager().addJobChangeListener(this.changeListener);
        StatusManager.getManager().addListener(this.notificationListener);
    }

    private void setUpImages() {
        URL iconsRoot = ProgressManagerUtil.getIconsRoot();
        try {
            this.setUpImage(iconsRoot, SLEEPING_JOB, SLEEPING_JOB_KEY);
            this.setUpImage(iconsRoot, WAITING_JOB, WAITING_JOB_KEY);
            this.setUpImage(iconsRoot, BLOCKED_JOB, BLOCKED_JOB_KEY);
            ImageDescriptor errorImage = ImageDescriptor.createFromURL((URL)new URL(iconsRoot, ERROR_JOB));
            JFaceResources.getImageRegistry().put(ERROR_JOB_KEY, errorImage);
        }
        catch (MalformedURLException e) {
            ProgressManagerUtil.logException(e);
        }
    }

    private StatusManager.INotificationListener createNotificationListener() {
        return new StatusManager.INotificationListener(){

            public void statusManagerNotified(int type, StatusAdapter[] adapters) {
                if (type == 1) {
                    FinishedJobs.getInstance().removeErrorJobs();
                    StatusAdapterHelper.getInstance().clear();
                }
            }
        };
    }

    private IJobChangeListener createChangeListener() {
        return new JobChangeAdapter(){

            public void aboutToRun(IJobChangeEvent event) {
                JobInfo info = ProgressManager.this.getJobInfo(event.getJob());
                ProgressManager.this.refreshJobInfo(info);
                Iterator startListeners = ProgressManager.this.busyListenersForJob(event.getJob()).iterator();
                while (startListeners.hasNext()) {
                    IJobBusyListener next = (IJobBusyListener)startListeners.next();
                    next.incrementBusy(event.getJob());
                }
            }

            public void done(IJobChangeEvent event) {
                if (!PlatformUI.isWorkbenchRunning()) {
                    return;
                }
                Iterator startListeners = ProgressManager.this.busyListenersForJob(event.getJob()).iterator();
                while (startListeners.hasNext()) {
                    IJobBusyListener next = (IJobBusyListener)startListeners.next();
                    next.decrementBusy(event.getJob());
                }
                JobInfo info = ProgressManager.this.getJobInfo(event.getJob());
                ProgressManager.this.removeJobInfo(info);
                if (event.getResult() != null && event.getResult().getSeverity() == 4) {
                    StatusAdapter statusAdapter = new StatusAdapter(event.getResult());
                    Class<?> clazz = class$0;
                    if (clazz == null) {
                        try {
                            clazz = class$0 = Class.forName("org.eclipse.core.runtime.jobs.Job");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    statusAdapter.addAdapter(clazz, event.getJob());
                    if (event.getJob().getProperty(IProgressConstants.NO_IMMEDIATE_ERROR_PROMPT_PROPERTY) == Boolean.TRUE) {
                        statusAdapter.setProperty(IProgressConstants.NO_IMMEDIATE_ERROR_PROMPT_PROPERTY, Boolean.TRUE);
                        StatusAdapterHelper.getInstance().putStatusAdapter(info, statusAdapter);
                    }
                    StatusManager.getManager().handle(statusAdapter, 2);
                }
            }

            public void scheduled(IJobChangeEvent event) {
                boolean noDialog;
                this.updateFor(event);
                if (event.getJob().isUser() && !(noDialog = ProgressManager.this.shouldRunInBackground())) {
                    IJobChangeEvent finalEvent = event;
                    WorkbenchJob showJob = new WorkbenchJob(this, ProgressMessages.ProgressManager_showInDialogName, finalEvent){
                        final /* synthetic */ 3 this$1;
                        private final /* synthetic */ IJobChangeEvent val$finalEvent;
                        {
                            this.this$1 = var1_1;
                            this.val$finalEvent = iJobChangeEvent;
                        }

                        public IStatus runInUIThread(IProgressMonitor monitor) {
                            3.access$0(this.this$1).showInDialog(null, this.val$finalEvent.getJob());
                            return Status.OK_STATUS;
                        }
                    };
                    showJob.setSystem(true);
                    showJob.schedule();
                    return;
                }
            }

            private void updateFor(IJobChangeEvent event) {
                if (ProgressManager.this.isInfrastructureJob(event.getJob())) {
                    return;
                }
                if (ProgressManager.this.jobs.containsKey(event.getJob())) {
                    ProgressManager.this.refreshJobInfo(ProgressManager.this.getJobInfo(event.getJob()));
                } else {
                    ProgressManager.this.addJobInfo(new JobInfo(event.getJob()));
                }
            }

            public void awake(IJobChangeEvent event) {
                this.updateFor(event);
            }

            public void sleeping(IJobChangeEvent event) {
                if (ProgressManager.this.jobs.containsKey(event.getJob())) {
                    ProgressManager.this.sleepJobInfo(ProgressManager.this.getJobInfo(event.getJob()));
                }
            }

            static /* synthetic */ ProgressManager access$0(3 var0) {
                return var0.ProgressManager.this;
            }
        };
    }

    protected void sleepJobInfo(JobInfo info) {
        if (this.isInfrastructureJob(info.getJob())) {
            return;
        }
        GroupInfo group = info.getGroupInfo();
        if (group != null) {
            this.sleepGroup(group, info);
        }
        Object[] listenersArray = this.listeners.getListeners();
        int i = 0;
        while (i < listenersArray.length) {
            IJobProgressManagerListener listener = (IJobProgressManagerListener)listenersArray[i];
            if (!this.isNeverDisplaying(info.getJob(), listener.showsDebug())) {
                if (listener.showsDebug()) {
                    listener.refreshJobInfo(info);
                } else {
                    listener.removeJob(info);
                }
            }
            ++i;
        }
    }

    private void sleepGroup(GroupInfo group, JobInfo info) {
        Object[] listenersArray = this.listeners.getListeners();
        int i = 0;
        while (i < listenersArray.length) {
            IJobProgressManagerListener listener = (IJobProgressManagerListener)listenersArray[i];
            if (!this.isNeverDisplaying(info.getJob(), listener.showsDebug())) {
                if (listener.showsDebug() || group.isActive()) {
                    listener.refreshGroup(group);
                } else {
                    listener.removeGroup(group);
                }
            }
            ++i;
        }
    }

    private void setUpImage(URL iconsRoot, String fileName, String key) throws MalformedURLException {
        JFaceResources.getImageRegistry().put(key, ImageDescriptor.createFromURL((URL)new URL(iconsRoot, fileName)));
    }

    public IProgressMonitor createMonitor(Job job) {
        return this.progressFor(job);
    }

    public IProgressMonitor getDefaultMonitor() {
        Display display;
        if (PlatformUI.isWorkbenchRunning() && !PlatformUI.getWorkbench().isStarting() && !(display = PlatformUI.getWorkbench().getDisplay()).isDisposed() && display.getThread() == Thread.currentThread()) {
            return new EventLoopProgressMonitor((IProgressMonitor)new NullProgressMonitor());
        }
        return super.getDefaultMonitor();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public JobMonitor progressFor(Job job) {
        Map map = this.runnableMonitors;
        synchronized (map) {
            JobMonitor monitor = (JobMonitor)this.runnableMonitors.get(job);
            if (monitor == null) {
                monitor = new JobMonitor(job);
                this.runnableMonitors.put(job, monitor);
            }
            return monitor;
        }
    }

    void addListener(IJobProgressManagerListener listener) {
        this.listeners.add((Object)listener);
    }

    void removeListener(IJobProgressManagerListener listener) {
        this.listeners.remove((Object)listener);
    }

    JobInfo getJobInfo(Job job) {
        JobInfo info = this.internalGetJobInfo(job);
        if (info == null) {
            info = new JobInfo(job);
            this.jobs.put(job, info);
        }
        return info;
    }

    JobInfo internalGetJobInfo(Job job) {
        return (JobInfo)this.jobs.get(job);
    }

    public void refreshJobInfo(JobInfo info) {
        GroupInfo group = info.getGroupInfo();
        if (group != null) {
            this.refreshGroup(group);
        }
        Object[] listenersArray = this.listeners.getListeners();
        int i = 0;
        while (i < listenersArray.length) {
            IJobProgressManagerListener listener = (IJobProgressManagerListener)listenersArray[i];
            if (!this.isCurrentDisplaying(info.getJob(), listener.showsDebug())) {
                listener.refreshJobInfo(info);
            }
            ++i;
        }
    }

    public void refreshGroup(GroupInfo info) {
        Object[] listenersArray = this.listeners.getListeners();
        int i = 0;
        while (i < listenersArray.length) {
            ((IJobProgressManagerListener)listenersArray[i]).refreshGroup(info);
            ++i;
        }
    }

    public void refreshAll() {
        this.pruneStaleJobs();
        Object[] listenersArray = this.listeners.getListeners();
        int i = 0;
        while (i < listenersArray.length) {
            ((IJobProgressManagerListener)listenersArray[i]).refreshAll();
            ++i;
        }
    }

    public void removeJobInfo(JobInfo info) {
        Job job = info.getJob();
        this.jobs.remove(job);
        this.runnableMonitors.remove(job);
        Object[] listenersArray = this.listeners.getListeners();
        int i = 0;
        while (i < listenersArray.length) {
            IJobProgressManagerListener listener = (IJobProgressManagerListener)listenersArray[i];
            if (!this.isCurrentDisplaying(info.getJob(), listener.showsDebug())) {
                listener.removeJob(info);
            }
            ++i;
        }
    }

    public void removeGroup(GroupInfo group) {
        Object[] listenersArray = this.listeners.getListeners();
        int i = 0;
        while (i < listenersArray.length) {
            ((IJobProgressManagerListener)listenersArray[i]).removeGroup(group);
            ++i;
        }
    }

    public void addJobInfo(JobInfo info) {
        GroupInfo group = info.getGroupInfo();
        if (group != null) {
            this.refreshGroup(group);
        }
        this.jobs.put(info.getJob(), info);
        Object[] listenersArray = this.listeners.getListeners();
        int i = 0;
        while (i < listenersArray.length) {
            IJobProgressManagerListener listener = (IJobProgressManagerListener)listenersArray[i];
            if (!this.isCurrentDisplaying(info.getJob(), listener.showsDebug())) {
                listener.addJob(info);
            }
            ++i;
        }
    }

    boolean isCurrentDisplaying(Job job, boolean debug) {
        return this.isNeverDisplaying(job, debug) || job.getState() == 1;
    }

    boolean isNeverDisplaying(Job job, boolean debug) {
        if (this.isInfrastructureJob(job)) {
            return true;
        }
        if (debug) {
            return false;
        }
        return job.isSystem();
    }

    private boolean isInfrastructureJob(Job job) {
        if (Policy.DEBUG_SHOW_ALL_JOBS) {
            return false;
        }
        return job.getProperty(ProgressManagerUtil.INFRASTRUCTURE_PROPERTY) != null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public JobInfo[] getJobInfos(boolean debug) {
        Map map = this.jobs;
        synchronized (map) {
            Iterator iterator = this.jobs.keySet().iterator();
            ArrayList result = new ArrayList();
            while (iterator.hasNext()) {
                Job next = (Job)iterator.next();
                if (this.isCurrentDisplaying(next, debug)) continue;
                result.add(this.jobs.get(next));
            }
            JobInfo[] infos = new JobInfo[result.size()];
            result.toArray(infos);
            return infos;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public JobTreeElement[] getRootElements(boolean debug) {
        Map map = this.jobs;
        synchronized (map) {
            Iterator iterator = this.jobs.keySet().iterator();
            HashSet<JobTreeElement> result = new HashSet<JobTreeElement>();
            while (iterator.hasNext()) {
                Job next = (Job)iterator.next();
                if (this.isCurrentDisplaying(next, debug)) continue;
                JobInfo jobInfo = (JobInfo)this.jobs.get(next);
                GroupInfo group = jobInfo.getGroupInfo();
                if (group == null) {
                    result.add(jobInfo);
                    continue;
                }
                result.add(group);
            }
            JobTreeElement[] infos = new JobTreeElement[result.size()];
            result.toArray(infos);
            return infos;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean hasJobInfos() {
        Map map = this.jobs;
        synchronized (map) {
            block4: {
                Iterator iterator = this.jobs.keySet().iterator();
                if (!iterator.hasNext()) break block4;
                return true;
            }
            return false;
        }
    }

    Image getImage(ImageData source) {
        ImageData mask = source.getTransparencyMask();
        return new Image(null, source, mask);
    }

    ImageData[] getImageData(URL fileSystemPath, ImageLoader loader) {
        try {
            InputStream stream = fileSystemPath.openStream();
            ImageData[] result = loader.load(stream);
            stream.close();
            return result;
        }
        catch (FileNotFoundException exception) {
            ProgressManagerUtil.logException(exception);
            return null;
        }
        catch (IOException exception) {
            ProgressManagerUtil.logException(exception);
            return null;
        }
    }

    public void busyCursorWhile(final IRunnableWithProgress runnable) throws InvocationTargetException, InterruptedException {
        final ProgressMonitorJobsDialog dialog = new ProgressMonitorJobsDialog(ProgressManagerUtil.getDefaultParent());
        dialog.setOpenOnRun(false);
        final InvocationTargetException[] invokes = new InvocationTargetException[1];
        final InterruptedException[] interrupt = new InterruptedException[1];
        Runnable dialogWaitRunnable = new Runnable(){

            public void run() {
                try {
                    try {
                        dialog.setOpenOnRun(false);
                        ProgressManager.this.setUserInterfaceActive(false);
                        dialog.run(true, true, runnable);
                    }
                    catch (InvocationTargetException e) {
                        invokes[0] = e;
                        ProgressManager.this.setUserInterfaceActive(true);
                    }
                    catch (InterruptedException e) {
                        interrupt[0] = e;
                        ProgressManager.this.setUserInterfaceActive(true);
                    }
                }
                finally {
                    ProgressManager.this.setUserInterfaceActive(true);
                }
            }
        };
        this.busyCursorWhile(dialogWaitRunnable, dialog);
        if (invokes[0] != null) {
            throw invokes[0];
        }
        if (interrupt[0] != null) {
            throw interrupt[0];
        }
    }

    private void busyCursorWhile(Runnable dialogWaitRunnable, ProgressMonitorJobsDialog dialog) {
        this.scheduleProgressMonitorJob(dialog);
        Display display = PlatformUI.getWorkbench().getDisplay();
        if (display == null) {
            return;
        }
        BusyIndicator.showWhile((Display)display, (Runnable)dialogWaitRunnable);
    }

    private void scheduleProgressMonitorJob(final ProgressMonitorJobsDialog dialog) {
        WorkbenchJob updateJob = new WorkbenchJob(ProgressMessages.ProgressManager_openJobName){

            public IStatus runInUIThread(IProgressMonitor monitor) {
                ProgressManager.this.setUserInterfaceActive(true);
                if (ProgressManagerUtil.safeToOpen(dialog, null)) {
                    dialog.open();
                }
                return Status.OK_STATUS;
            }
        };
        updateJob.setSystem(true);
        updateJob.schedule(this.getLongOperationTime());
    }

    private void shutdown() {
        this.listeners.clear();
        Job.getJobManager().setProgressProvider(null);
        Job.getJobManager().removeJobChangeListener(this.changeListener);
    }

    public IProgressMonitor createProgressGroup() {
        return new GroupInfo();
    }

    public IProgressMonitor createMonitor(Job job, IProgressMonitor group, int ticks) {
        JobMonitor monitor = this.progressFor(job);
        if (group instanceof GroupInfo) {
            GroupInfo groupInfo = (GroupInfo)group;
            JobInfo jobInfo = this.getJobInfo(job);
            jobInfo.setGroupInfo(groupInfo);
            jobInfo.setTicks(ticks);
            groupInfo.addJobInfo(jobInfo);
        }
        return monitor;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void addListenerToFamily(Object family, IJobBusyListener listener) {
        Map map = this.familyListeners;
        synchronized (map) {
            HashSet<IJobBusyListener> currentListeners = (HashSet<IJobBusyListener>)this.familyListeners.get(family);
            if (currentListeners == null) {
                currentListeners = new HashSet<IJobBusyListener>();
                this.familyListeners.put(family, currentListeners);
            }
            currentListeners.add(listener);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void removeListener(IJobBusyListener listener) {
        Map map = this.familyListeners;
        synchronized (map) {
            Iterator families = this.familyListeners.keySet().iterator();
            while (families.hasNext()) {
                Object next = families.next();
                Collection currentListeners = (Collection)this.familyListeners.get(next);
                currentListeners.remove(listener);
                if (!currentListeners.isEmpty()) continue;
                families.remove();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private Collection busyListenersForJob(Job job) {
        if (job.isSystem()) {
            return Collections.EMPTY_LIST;
        }
        Map map = this.familyListeners;
        synchronized (map) {
            if (this.familyListeners.isEmpty()) {
                return Collections.EMPTY_LIST;
            }
            Iterator families = this.familyListeners.keySet().iterator();
            HashSet returnValue = new HashSet();
            while (families.hasNext()) {
                Object next = families.next();
                if (!job.belongsTo(next)) continue;
                Collection currentListeners = (Collection)this.familyListeners.get(next);
                returnValue.addAll(currentListeners);
            }
            return returnValue;
        }
    }

    public void showInDialog(Shell shell, Job job) {
        if (this.shouldRunInBackground()) {
            return;
        }
        ProgressMonitorFocusJobDialog dialog = new ProgressMonitorFocusJobDialog(shell);
        dialog.show(job, shell);
    }

    public void run(boolean fork, boolean cancelable, IRunnableWithProgress runnable) throws InvocationTargetException, InterruptedException {
        if (!fork || !cancelable) {
            ProgressMonitorJobsDialog dialog = new ProgressMonitorJobsDialog(null);
            dialog.run(fork, cancelable, runnable);
            return;
        }
        this.busyCursorWhile(runnable);
    }

    public void runInUI(IRunnableContext context, IRunnableWithProgress runnable, ISchedulingRule rule) throws InvocationTargetException, InterruptedException {
        final RunnableWithStatus runnableWithStatus = new RunnableWithStatus(context, runnable, rule);
        final Display display = Display.getDefault();
        display.syncExec(new Runnable(){

            public void run() {
                BusyIndicator.showWhile((Display)display, (Runnable)runnableWithStatus);
            }
        });
        IStatus status = runnableWithStatus.getStatus();
        if (!status.isOK()) {
            Throwable exception = status.getException();
            if (exception instanceof InvocationTargetException) {
                throw (InvocationTargetException)exception;
            }
            if (exception instanceof InterruptedException) {
                throw (InterruptedException)exception;
            }
            throw new InterruptedException(exception.getMessage());
        }
    }

    public int getLongOperationTime() {
        return 800;
    }

    public void registerIconForFamily(ImageDescriptor icon, Object family) {
        String key = IMAGE_KEY + String.valueOf(this.imageKeyTable.size());
        this.imageKeyTable.put(family, key);
        ImageRegistry registry = JFaceResources.getImageRegistry();
        if (registry.getDescriptor(key) == null) {
            registry.put(key, icon);
        }
    }

    public Image getIconFor(Job job) {
        Enumeration families = this.imageKeyTable.keys();
        while (families.hasMoreElements()) {
            Object next = families.nextElement();
            if (!job.belongsTo(next)) continue;
            return JFaceResources.getImageRegistry().get((String)this.imageKeyTable.get(next));
        }
        return null;
    }

    private void setUserInterfaceActive(boolean active) {
        IWorkbench workbench = PlatformUI.getWorkbench();
        Shell[] shells = workbench.getDisplay().getShells();
        if (active) {
            int i = 0;
            while (i < shells.length) {
                if (!shells[i].isDisposed()) {
                    shells[i].setEnabled(active);
                }
                ++i;
            }
        } else {
            int i = shells.length - 1;
            while (i >= 0) {
                if (!shells[i].isDisposed()) {
                    shells[i].setEnabled(active);
                }
                --i;
            }
        }
    }

    private boolean pruneStaleJobs() {
        Object[] jobsToCheck = this.jobs.keySet().toArray();
        boolean pruned = false;
        int i = 0;
        while (i < jobsToCheck.length) {
            Job job = (Job)jobsToCheck[i];
            if (this.checkForStaleness(job)) {
                if (Policy.DEBUG_STALE_JOBS) {
                    WorkbenchPlugin.log("Stale Job " + job.getName());
                }
                pruned = true;
            }
            ++i;
        }
        return pruned;
    }

    boolean checkForStaleness(Job job) {
        if (job.getState() == 0) {
            this.removeJobInfo(this.getJobInfo(job));
            return true;
        }
        return false;
    }

    private boolean shouldRunInBackground() {
        return WorkbenchPlugin.getDefault().getPreferenceStore().getBoolean("RUN_IN_BACKGROUND");
    }

    public void setShowSystemJobs(boolean showSystem) {
        ProgressViewUpdater updater = ProgressViewUpdater.getSingleton();
        updater.debug = showSystem;
        updater.refreshAll();
    }

    class JobMonitor
    implements IProgressMonitorWithBlocking {
        Job job;
        String currentTaskName;
        IProgressMonitorWithBlocking listener;

        JobMonitor(Job newJob) {
            this.job = newJob;
        }

        void addProgressListener(IProgressMonitorWithBlocking monitor) {
            this.listener = monitor;
            JobInfo info = ProgressManager.this.getJobInfo(this.job);
            TaskInfo currentTask = info.getTaskInfo();
            if (currentTask != null) {
                this.listener.beginTask(this.currentTaskName, currentTask.totalWork);
                this.listener.internalWorked(currentTask.preWork);
            }
        }

        public void beginTask(String taskName, int totalWork) {
            JobInfo info = ProgressManager.this.getJobInfo(this.job);
            info.beginTask(taskName, totalWork);
            ProgressManager.this.refreshJobInfo(info);
            this.currentTaskName = taskName;
            if (this.listener != null) {
                this.listener.beginTask(taskName, totalWork);
            }
        }

        public void done() {
            JobInfo info = ProgressManager.this.getJobInfo(this.job);
            info.clearTaskInfo();
            info.clearChildren();
            ProgressManager.this.runnableMonitors.remove(this.job);
            if (this.listener != null) {
                this.listener.done();
            }
        }

        public void internalWorked(double work) {
            JobInfo info = ProgressManager.this.getJobInfo(this.job);
            if (info.hasTaskInfo()) {
                info.addWork(work);
                ProgressManager.this.refreshJobInfo(info);
            }
            if (this.listener != null) {
                this.listener.internalWorked(work);
            }
        }

        public boolean isCanceled() {
            JobInfo info = ProgressManager.this.internalGetJobInfo(this.job);
            if (info == null) {
                return false;
            }
            return info.isCanceled();
        }

        public void setCanceled(boolean value) {
            JobInfo info = ProgressManager.this.getJobInfo(this.job);
            if (value && !info.isCanceled()) {
                info.cancel();
                if (this.listener != null) {
                    this.listener.setCanceled(value);
                }
            }
        }

        public void setTaskName(String taskName) {
            JobInfo info = ProgressManager.this.getJobInfo(this.job);
            if (!info.hasTaskInfo()) {
                this.beginTask(taskName, 100);
                return;
            }
            info.setTaskName(taskName);
            info.clearChildren();
            ProgressManager.this.refreshJobInfo(info);
            this.currentTaskName = taskName;
            if (this.listener != null) {
                this.listener.setTaskName(taskName);
            }
        }

        public void subTask(String name) {
            if (name == null) {
                return;
            }
            JobInfo info = ProgressManager.this.getJobInfo(this.job);
            info.clearChildren();
            info.addSubTask(name);
            ProgressManager.this.refreshJobInfo(info);
            if (this.listener != null) {
                this.listener.subTask(name);
            }
        }

        public void worked(int work) {
            this.internalWorked(work);
        }

        public void clearBlocked() {
            JobInfo info = ProgressManager.this.getJobInfo(this.job);
            info.setBlockedStatus(null);
            ProgressManager.this.refreshJobInfo(info);
            if (this.listener != null) {
                this.listener.clearBlocked();
            }
        }

        public void setBlocked(IStatus reason) {
            JobInfo info = ProgressManager.this.getJobInfo(this.job);
            info.setBlockedStatus(reason);
            ProgressManager.this.refreshJobInfo(info);
            if (this.listener != null) {
                this.listener.setBlocked(reason);
            }
        }
    }

    private class RunnableWithStatus
    implements Runnable {
        IStatus status = Status.OK_STATUS;
        private final IRunnableContext context;
        private final IRunnableWithProgress runnable;
        private final ISchedulingRule rule;

        public RunnableWithStatus(IRunnableContext context, IRunnableWithProgress runnable, ISchedulingRule rule) {
            this.context = context;
            this.runnable = runnable;
            this.rule = rule;
        }

        /*
         * Loose catch block
         */
        public void run() {
            IJobManager manager = Job.getJobManager();
            try {
                try {
                    manager.beginRule(this.rule, this.getEventLoopMonitor());
                    this.context.run(false, false, this.runnable);
                }
                catch (InvocationTargetException e) {
                    this.status = new Status(4, "org.eclipse.ui", e.getMessage(), (Throwable)e);
                    manager.endRule(this.rule);
                }
                catch (InterruptedException e) {
                    this.status = new Status(4, "org.eclipse.ui", e.getMessage(), (Throwable)e);
                    manager.endRule(this.rule);
                }
                catch (OperationCanceledException e) {
                    this.status = new Status(4, "org.eclipse.ui", e.getMessage(), (Throwable)e);
                    {
                        catch (Throwable throwable) {
                            throw throwable;
                        }
                    }
                    manager.endRule(this.rule);
                }
            }
            finally {
                manager.endRule(this.rule);
            }
        }

        private IProgressMonitor getEventLoopMonitor() {
            if (PlatformUI.getWorkbench().isStarting()) {
                return new NullProgressMonitor();
            }
            return new EventLoopProgressMonitor(this, (IProgressMonitor)new NullProgressMonitor()){
                final /* synthetic */ RunnableWithStatus this$1;
                {
                    this.this$1 = runnableWithStatus;
                }

                public void setBlocked(IStatus reason) {
                    Dialog.getBlockedHandler().showBlocked(ProgressManagerUtil.getDefaultParent(), (IProgressMonitor)this, reason, this.getTaskName());
                }
            };
        }

        public IStatus getStatus() {
            return this.status;
        }
    }
}

