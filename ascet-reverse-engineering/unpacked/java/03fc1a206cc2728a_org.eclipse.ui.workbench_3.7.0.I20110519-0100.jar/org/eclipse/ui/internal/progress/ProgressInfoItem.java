/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.DateFormat
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.NotEnabledException
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.jface.resource.ResourceManager
 *  org.eclipse.jface.util.Util
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.layout.FormAttachment
 *  org.eclipse.swt.layout.FormData
 *  org.eclipse.swt.layout.FormLayout
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Link
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.ProgressBar
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal.progress;

import com.ibm.icu.text.DateFormat;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.jface.util.Util;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.layout.FormAttachment;
import org.eclipse.swt.layout.FormData;
import org.eclipse.swt.layout.FormLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Link;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ProgressBar;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.progress.FinishedJobs;
import org.eclipse.ui.internal.progress.GroupInfo;
import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.progress.TaskInfo;
import org.eclipse.ui.progress.IProgressConstants;
import org.eclipse.ui.progress.IProgressConstants2;
import org.eclipse.ui.statushandlers.StatusManager;

public class ProgressInfoItem
extends Composite {
    static String STOP_IMAGE_KEY = "org.eclipse.ui.internal.progress.PROGRESS_STOP";
    static String DISABLED_STOP_IMAGE_KEY = "org.eclipse.ui.internal.progress.DISABLED_PROGRESS_STOP";
    static String CLEAR_FINISHED_JOB_KEY = "org.eclipse.ui.internal.progress.CLEAR_FINISHED_JOB";
    static String DISABLED_CLEAR_FINISHED_JOB_KEY = "org.eclipse.ui.internal.progress.DISABLED_CLEAR_FINISHED_JOB";
    static String DEFAULT_JOB_KEY = "org.eclipse.ui.internal.progress.PROGRESS_DEFAULT";
    static String DARK_COLOR_KEY = "org.eclipse.ui.internal.progress.PROGRESS_DARK_COLOR";
    JobTreeElement info;
    Label progressLabel;
    ToolBar actionBar;
    ToolItem actionButton;
    List taskEntries = new ArrayList(0);
    private ProgressBar progressBar;
    private Label jobImageLabel;
    static final int MAX_PROGRESS_HEIGHT = 12;
    static final int MIN_ICON_SIZE = 16;
    private static final String TEXT_KEY = "Text";
    private static final String TRIGGER_KEY = "Trigger";
    IndexListener indexListener;
    private int currentIndex;
    private boolean selected;
    private MouseAdapter mouseListener;
    private boolean isShowing = true;
    private ResourceManager resourceManager;
    private Link link;
    static /* synthetic */ Class class$0;

    static {
        JFaceResources.getImageRegistry().put(STOP_IMAGE_KEY, WorkbenchImages.getWorkbenchImageDescriptor("elcl16/progress_stop.gif"));
        JFaceResources.getImageRegistry().put(DISABLED_STOP_IMAGE_KEY, WorkbenchImages.getWorkbenchImageDescriptor("dlcl16/progress_stop.gif"));
        JFaceResources.getImageRegistry().put(DEFAULT_JOB_KEY, WorkbenchImages.getWorkbenchImageDescriptor("progress/progress_task.gif"));
        JFaceResources.getImageRegistry().put(CLEAR_FINISHED_JOB_KEY, WorkbenchImages.getWorkbenchImageDescriptor("elcl16/progress_rem.gif"));
        JFaceResources.getImageRegistry().put(DISABLED_CLEAR_FINISHED_JOB_KEY, WorkbenchImages.getWorkbenchImageDescriptor("dlcl16/progress_rem.gif"));
        int shift = Util.isMac() ? -25 : -10;
        Color lightColor = PlatformUI.getWorkbench().getDisplay().getSystemColor(25);
        RGB darkRGB = new RGB(Math.max(0, lightColor.getRed() + shift), Math.max(0, lightColor.getGreen() + shift), Math.max(0, lightColor.getBlue() + shift));
        JFaceResources.getColorRegistry().put(DARK_COLOR_KEY, darkRGB);
    }

    public ProgressInfoItem(Composite parent, int style, JobTreeElement progressInfo) {
        super(parent, style);
        this.info = progressInfo;
        this.createChildren();
        this.setData(this.info);
        this.setLayoutData(new GridData(4, 0, true, false));
    }

    protected void createChildren() {
        FormLayout layout = new FormLayout();
        this.setLayout((Layout)layout);
        this.jobImageLabel = new Label((Composite)this, 0);
        Image infoImage = this.getInfoImage();
        this.jobImageLabel.setImage(infoImage);
        FormData imageData = new FormData();
        imageData.top = infoImage != null ? new FormAttachment(50, -infoImage.getBounds().height / 2) : new FormAttachment(0, 4);
        imageData.left = new FormAttachment(0, 2);
        this.jobImageLabel.setLayoutData((Object)imageData);
        this.progressLabel = new Label((Composite)this, 0);
        this.setMainText();
        this.actionBar = new ToolBar((Composite)this, 0x800000);
        this.actionBar.setCursor(this.getDisplay().getSystemCursor(0));
        this.actionButton = new ToolItem(this.actionBar, 0);
        this.actionButton.setToolTipText(ProgressMessages.NewProgressView_CancelJobToolTip);
        this.actionButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ProgressInfoItem.this.actionButton.setEnabled(false);
                ProgressInfoItem.this.cancelOrRemove();
            }
        });
        this.actionBar.addListener(31, new Listener(){

            public void handleEvent(Event event) {
                if (ProgressInfoItem.this.indexListener == null) {
                    return;
                }
                int detail = event.detail;
                if (detail == 64) {
                    ProgressInfoItem.this.indexListener.selectNext();
                }
                if (detail == 32) {
                    ProgressInfoItem.this.indexListener.selectPrevious();
                }
            }
        });
        this.updateToolBarValues();
        FormData progressData = new FormData();
        progressData.top = new FormAttachment(0, 4);
        progressData.left = new FormAttachment((Control)this.jobImageLabel, 2);
        progressData.right = new FormAttachment((Control)this.actionBar, -4);
        this.progressLabel.setLayoutData((Object)progressData);
        this.mouseListener = new MouseAdapter(){

            public void mouseDown(MouseEvent e) {
                if (ProgressInfoItem.this.indexListener != null) {
                    ProgressInfoItem.this.indexListener.select();
                }
            }
        };
        this.addMouseListener((MouseListener)this.mouseListener);
        this.jobImageLabel.addMouseListener((MouseListener)this.mouseListener);
        this.progressLabel.addMouseListener((MouseListener)this.mouseListener);
        this.setLayoutsForNoProgress();
        this.refresh();
    }

    private void setMainText() {
        this.progressLabel.setText(Dialog.shortenText((String)this.getMainTitle(), (Control)this.progressLabel));
    }

    private void setLayoutsForNoProgress() {
        FormData buttonData = new FormData();
        buttonData.top = new FormAttachment((Control)this.progressLabel, 0, 128);
        buttonData.right = new FormAttachment(100, -4);
        this.actionBar.setLayoutData((Object)buttonData);
        if (this.taskEntries.size() > 0) {
            FormData linkData = new FormData();
            linkData.top = new FormAttachment((Control)this.progressLabel, 4);
            linkData.left = new FormAttachment((Control)this.progressLabel, 0, 16384);
            linkData.right = new FormAttachment((Control)this.actionBar, 0, 16384);
            ((Link)this.taskEntries.get(0)).setLayoutData((Object)linkData);
        }
    }

    protected void cancelOrRemove() {
        if (FinishedJobs.getInstance().isKept(this.info) && this.isCompleted()) {
            FinishedJobs.getInstance().remove(this.info);
        } else {
            this.info.cancel();
        }
    }

    private Image getInfoImage() {
        if (!this.info.isJobInfo()) {
            return JFaceResources.getImage((String)DEFAULT_JOB_KEY);
        }
        JobInfo jobInfo = (JobInfo)this.info;
        ImageDescriptor descriptor = null;
        Object property = jobInfo.getJob().getProperty(IProgressConstants.ICON_PROPERTY);
        if (property instanceof ImageDescriptor) {
            descriptor = (ImageDescriptor)property;
        } else if (property instanceof URL) {
            descriptor = ImageDescriptor.createFromURL((URL)((URL)property));
        }
        Image image = null;
        image = descriptor == null ? ProgressManager.getInstance().getIconFor(jobInfo.getJob()) : this.getResourceManager().createImageWithDefault(descriptor);
        if (image == null) {
            image = jobInfo.getDisplayImage();
        }
        return image;
    }

    private ResourceManager getResourceManager() {
        if (this.resourceManager == null) {
            this.resourceManager = new LocalResourceManager(JFaceResources.getResources());
        }
        return this.resourceManager;
    }

    private String getMainTitle() {
        if (this.info.isJobInfo()) {
            return this.getJobNameAndStatus((JobInfo)this.info);
        }
        if (this.info.hasChildren()) {
            return ((GroupInfo)this.info).getTaskName();
        }
        return this.info.getDisplayString();
    }

    public String getJobNameAndStatus(JobInfo jobInfo) {
        Job job = jobInfo.getJob();
        String name = job.getName();
        if (job.isSystem()) {
            name = NLS.bind((String)ProgressMessages.JobInfo_System, (Object)name);
        }
        if (jobInfo.isCanceled()) {
            if (job.getState() == 4) {
                return NLS.bind((String)ProgressMessages.JobInfo_Cancel_Requested, (Object)name);
            }
            return NLS.bind((String)ProgressMessages.JobInfo_Cancelled, (Object)name);
        }
        if (jobInfo.isBlocked()) {
            IStatus blockedStatus = jobInfo.getBlockedStatus();
            return NLS.bind((String)ProgressMessages.JobInfo_Blocked, (Object)name, (Object)blockedStatus.getMessage());
        }
        switch (job.getState()) {
            case 4: {
                return name;
            }
            case 1: {
                return NLS.bind((String)ProgressMessages.JobInfo_Sleeping, (Object)name);
            }
            case 0: {
                return this.getJobInfoFinishedString(job, true);
            }
        }
        return NLS.bind((String)ProgressMessages.JobInfo_Waiting, (Object)name);
    }

    String getJobInfoFinishedString(Job job, boolean withTime) {
        String time = null;
        if (withTime) {
            time = this.getTimeString();
        }
        if (time != null) {
            return NLS.bind((String)ProgressMessages.JobInfo_FinishedAt, (Object)job.getName(), (Object)time);
        }
        return NLS.bind((String)ProgressMessages.JobInfo_Finished, (Object)job.getName());
    }

    private String getTimeString() {
        Date date = FinishedJobs.getInstance().getFinishDate(this.info);
        if (date != null) {
            return DateFormat.getTimeInstance((int)3).format(date);
        }
        return null;
    }

    void refresh() {
        int i;
        if (this.isDisposed() || !this.isShowing) {
            return;
        }
        this.jobImageLabel.setImage(this.getInfoImage());
        int percentDone = this.getPercentDone();
        JobInfo[] infos = this.getJobInfos();
        if (this.isRunning()) {
            if (this.progressBar == null) {
                if (percentDone == -1) {
                    i = 0;
                    while (i < infos.length) {
                        if (infos[i].hasTaskInfo() && infos[i].getTaskInfo().totalWork == -1) {
                            this.createProgressBar(2);
                            break;
                        }
                        ++i;
                    }
                } else {
                    this.createProgressBar(0);
                    this.progressBar.setMinimum(0);
                    this.progressBar.setMaximum(100);
                }
            }
            if (percentDone >= 0 && percentDone <= 100 && percentDone != this.progressBar.getSelection()) {
                this.progressBar.setSelection(percentDone);
            }
        } else if (this.isCompleted()) {
            if (this.progressBar != null) {
                this.progressBar.dispose();
                this.progressBar = null;
            }
            this.setLayoutsForNoProgress();
        }
        i = 0;
        while (i < infos.length) {
            JobInfo jobInfo = infos[i];
            TaskInfo taskInfo = jobInfo.getTaskInfo();
            if (taskInfo != null) {
                String taskString = taskInfo.getTaskName();
                String subTaskString = null;
                Object[] jobChildren = jobInfo.getChildren();
                if (jobChildren.length > 0) {
                    subTaskString = ((JobTreeElement)jobChildren[0]).getDisplayString();
                }
                if (subTaskString != null) {
                    taskString = taskString == null || taskString.length() == 0 ? subTaskString : NLS.bind((String)ProgressMessages.JobInfo_DoneNoProgressMessage, (Object)taskString, (Object)subTaskString);
                }
                if (taskString != null) {
                    this.setLinkText(infos[i].getJob(), taskString, i);
                }
            } else {
                Job job = jobInfo.getJob();
                IStatus result = job.getResult();
                if (result == null || result.getMessage().length() == 0 && !this.info.isJobInfo()) {
                    this.setLinkText(job, this.getJobNameAndStatus(jobInfo), i);
                } else {
                    this.setLinkText(job, result.getMessage(), i);
                }
            }
            this.setColor(this.currentIndex);
            ++i;
        }
        if (infos.length < this.taskEntries.size()) {
            i = infos.length;
            while (i < this.taskEntries.size()) {
                ((Link)this.taskEntries.get(i)).dispose();
                ++i;
            }
            if (infos.length > 1) {
                this.taskEntries = this.taskEntries.subList(0, infos.length - 1);
            } else {
                this.taskEntries.clear();
            }
        }
        this.updateToolBarValues();
        this.setMainText();
    }

    private boolean isCompleted() {
        JobInfo[] infos = this.getJobInfos();
        int i = 0;
        while (i < infos.length) {
            if (infos[i].getJob().getState() != 0) {
                return false;
            }
            ++i;
        }
        return infos.length > 0;
    }

    public JobInfo[] getJobInfos() {
        if (this.info.isJobInfo()) {
            return new JobInfo[]{(JobInfo)this.info};
        }
        Object[] children = this.info.getChildren();
        JobInfo[] infos = new JobInfo[children.length];
        System.arraycopy(children, 0, infos, 0, children.length);
        return infos;
    }

    private boolean isRunning() {
        JobInfo[] infos = this.getJobInfos();
        int i = 0;
        while (i < infos.length) {
            int state = infos[i].getJob().getState();
            if (state == 2 || state == 4) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private int getPercentDone() {
        if (this.info.isJobInfo()) {
            return ((JobInfo)this.info).getPercentDone();
        }
        if (this.info.hasChildren()) {
            TaskInfo ti;
            Object[] roots = ((GroupInfo)this.info).getChildren();
            if (roots.length == 1 && roots[0] instanceof JobTreeElement && (ti = ((JobInfo)roots[0]).getTaskInfo()) != null) {
                return ti.getPercentDone();
            }
            return ((GroupInfo)this.info).getPercentDone();
        }
        return 0;
    }

    private void updateToolBarValues() {
        if (this.isCompleted()) {
            this.actionButton.setImage(JFaceResources.getImage((String)CLEAR_FINISHED_JOB_KEY));
            this.actionButton.setDisabledImage(JFaceResources.getImage((String)DISABLED_CLEAR_FINISHED_JOB_KEY));
            this.actionButton.setToolTipText(ProgressMessages.NewProgressView_ClearJobToolTip);
        } else {
            this.actionButton.setImage(JFaceResources.getImage((String)STOP_IMAGE_KEY));
            this.actionButton.setDisabledImage(JFaceResources.getImage((String)DISABLED_STOP_IMAGE_KEY));
        }
        JobInfo[] infos = this.getJobInfos();
        int i = 0;
        while (i < infos.length) {
            if (infos[i].isCanceled() && !this.isCompleted()) {
                this.actionButton.setEnabled(false);
                return;
            }
            ++i;
        }
        this.actionButton.setEnabled(true);
    }

    void createProgressBar(int style) {
        FormData buttonData = new FormData();
        buttonData.top = new FormAttachment((Control)this.progressLabel, 0);
        buttonData.right = new FormAttachment(100, -4);
        this.actionBar.setLayoutData((Object)buttonData);
        this.progressBar = new ProgressBar((Composite)this, 0x100 | style);
        FormData barData = new FormData();
        barData.top = new FormAttachment((Control)this.actionBar, 4, 128);
        barData.left = new FormAttachment((Control)this.progressLabel, 0, 16384);
        barData.right = new FormAttachment((Control)this.actionBar, -4);
        barData.height = 12;
        barData.width = 0;
        this.progressBar.setLayoutData((Object)barData);
        if (this.taskEntries.size() > 0) {
            FormData linkData = new FormData();
            linkData.top = new FormAttachment((Control)this.progressBar, 4);
            linkData.left = new FormAttachment(0, 4);
            linkData.right = new FormAttachment((Control)this.progressBar, 0, 131072);
            linkData.width = 21;
            ((Link)this.taskEntries.get(0)).setLayoutData((Object)linkData);
        }
    }

    void setLinkText(Job linkJob, String taskString, int index) {
        if (index >= this.taskEntries.size()) {
            this.link = new Link((Composite)this, 0);
            FormData linkData = new FormData();
            if (index == 0 || this.taskEntries.size() == 0) {
                ProgressBar top = this.progressBar;
                if (top == null) {
                    top = this.progressLabel;
                }
                linkData.top = new FormAttachment((Control)top, 4);
                linkData.left = new FormAttachment((Control)top, 0, 16384);
                linkData.right = new FormAttachment((Control)this.progressBar, 0, 131072);
                linkData.width = 21;
            } else {
                Link previous = (Link)this.taskEntries.get(index - 1);
                linkData.top = new FormAttachment((Control)previous, 4);
                linkData.left = new FormAttachment((Control)previous, 0, 16384);
                linkData.right = new FormAttachment((Control)previous, 0, 131072);
                linkData.width = 21;
            }
            this.link.setLayoutData((Object)linkData);
            this.link.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    ProgressInfoItem.this.executeTrigger();
                }
            });
            this.link.addListener(11, new Listener(){

                public void handleEvent(Event event) {
                    Object text = ProgressInfoItem.this.link.getData(ProgressInfoItem.TEXT_KEY);
                    if (text == null) {
                        return;
                    }
                    ProgressInfoItem.this.updateText((String)text, ProgressInfoItem.this.link);
                }
            });
            this.taskEntries.add(this.link);
        } else {
            this.link = (Link)this.taskEntries.get(index);
        }
        this.link.setToolTipText(taskString);
        this.link.setData(TEXT_KEY, (Object)taskString);
        Object actionProperty = linkJob.getProperty(IProgressConstants.ACTION_PROPERTY);
        Object commandProperty = linkJob.getProperty(IProgressConstants2.COMMAND_PROPERTY);
        if (actionProperty != null && commandProperty != null) {
            this.updateTrigger(null, this.link);
        } else {
            Object property = actionProperty != null ? actionProperty : commandProperty;
            this.updateTrigger(property, this.link);
        }
        this.updateText(taskString, this.link);
    }

    public void executeTrigger() {
        Object data = this.link.getData(TRIGGER_KEY);
        if (data instanceof IAction) {
            IAction action = (IAction)data;
            if (action.isEnabled()) {
                action.run();
            }
            this.updateTrigger(action, this.link);
        } else if (data instanceof ParameterizedCommand) {
            IWorkbench workbench = PlatformUI.getWorkbench();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IHandlerService handlerService = (IHandlerService)workbench.getService(clazz);
            IStatus status = Status.OK_STATUS;
            try {
                handlerService.executeCommand((ParameterizedCommand)data, null);
            }
            catch (ExecutionException e) {
                status = new Status(4, "org.eclipse.ui", e.getMessage(), (Throwable)e);
            }
            catch (NotDefinedException e) {
                status = new Status(4, "org.eclipse.ui", e.getMessage(), (Throwable)e);
            }
            catch (NotEnabledException e) {
                status = new Status(2, "org.eclipse.ui", e.getMessage(), (Throwable)e);
            }
            catch (NotHandledException e) {
                status = new Status(4, "org.eclipse.ui", e.getMessage(), (Throwable)e);
            }
            if (!status.isOK()) {
                StatusManager.getManager().handle(status, 3);
            }
        }
        Object text = this.link.getData(TEXT_KEY);
        if (text == null) {
            return;
        }
        this.updateText((String)text, this.link);
    }

    private void updateTrigger(Object trigger, Link link) {
        if (trigger instanceof IAction && ((IAction)trigger).isEnabled()) {
            link.setData(TRIGGER_KEY, trigger);
        } else if (trigger instanceof ParameterizedCommand) {
            link.setData(TRIGGER_KEY, trigger);
        } else {
            link.setData(TRIGGER_KEY, null);
        }
    }

    private void updateText(String taskString, Link link) {
        taskString = Dialog.shortenText((String)taskString, (Control)link);
        link.setText(link.getData(TRIGGER_KEY) == null ? taskString : NLS.bind((String)"<a>{0}</a>", (Object)taskString));
    }

    public void setColor(int i) {
        this.currentIndex = i;
        if (this.selected) {
            this.setAllBackgrounds(this.getDisplay().getSystemColor(26));
            this.setAllForegrounds(this.getDisplay().getSystemColor(27));
            return;
        }
        if (i % 2 == 0) {
            this.setAllBackgrounds(JFaceResources.getColorRegistry().get(DARK_COLOR_KEY));
        } else {
            this.setAllBackgrounds(this.getDisplay().getSystemColor(25));
        }
        this.setAllForegrounds(this.getDisplay().getSystemColor(24));
    }

    private void setAllForegrounds(Color color) {
        this.setForeground(color);
        this.progressLabel.setForeground(color);
        Iterator taskEntryIterator = this.taskEntries.iterator();
        while (taskEntryIterator.hasNext()) {
            ((Link)taskEntryIterator.next()).setForeground(color);
        }
    }

    private void setAllBackgrounds(Color color) {
        this.setBackground(color);
        this.progressLabel.setBackground(color);
        this.actionBar.setBackground(color);
        this.jobImageLabel.setBackground(color);
        Iterator taskEntryIterator = this.taskEntries.iterator();
        while (taskEntryIterator.hasNext()) {
            ((Link)taskEntryIterator.next()).setBackground(color);
        }
    }

    void setButtonFocus() {
        this.actionBar.setFocus();
    }

    void selectWidgets(boolean select) {
        if (select) {
            this.setButtonFocus();
        }
        this.selected = select;
        this.setColor(this.currentIndex);
    }

    void setIndexListener(IndexListener indexListener) {
        this.indexListener = indexListener;
    }

    boolean isSelected() {
        return this.selected;
    }

    void setDisplayed(int top, int bottom) {
        int itemTop = this.getLocation().y;
        int itemBottom = itemTop + this.getBounds().height;
        this.setDisplayed(itemTop <= bottom && itemBottom > top);
    }

    private void setDisplayed(boolean displayed) {
        boolean refresh = !this.isShowing && displayed;
        this.isShowing = displayed;
        if (refresh) {
            this.refresh();
        }
    }

    public void dispose() {
        super.dispose();
        if (this.resourceManager != null) {
            this.resourceManager.dispose();
        }
    }

    public JobTreeElement getInfo() {
        return this.info;
    }

    static interface IndexListener {
        public void selectPrevious();

        public void selectNext();

        public void select();
    }
}

