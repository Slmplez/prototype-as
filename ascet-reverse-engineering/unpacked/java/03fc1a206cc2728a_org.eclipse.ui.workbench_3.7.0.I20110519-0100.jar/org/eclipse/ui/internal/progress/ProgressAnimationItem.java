/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.NotEnabledException
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.util.Util
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.ProgressBar
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.util.Util;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.ProgressBar;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.progress.AnimationItem;
import org.eclipse.ui.internal.progress.FinishedJobs;
import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.internal.progress.JobTreeElement;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.progress.ProgressRegion;
import org.eclipse.ui.internal.progress.StatusAdapterHelper;
import org.eclipse.ui.progress.IProgressConstants2;
import org.eclipse.ui.statushandlers.StatusAdapter;
import org.eclipse.ui.statushandlers.StatusManager;

public class ProgressAnimationItem
extends AnimationItem
implements FinishedJobs.KeptJobsListener {
    ProgressBar bar;
    MouseListener mouseListener;
    Composite top;
    ToolBar toolbar;
    ToolItem toolButton;
    ProgressRegion progressRegion;
    Image noneImage;
    Image okImage;
    Image errorImage;
    boolean animationRunning;
    private int flags;
    static /* synthetic */ Class class$0;

    ProgressAnimationItem(ProgressRegion region, int flags) {
        super(region.workbenchWindow);
        this.flags = flags;
        FinishedJobs.getInstance().addListener(this);
        this.progressRegion = region;
        this.mouseListener = new MouseAdapter(){

            public void mouseDoubleClick(MouseEvent e) {
                ProgressAnimationItem.this.doAction();
            }
        };
    }

    void doAction() {
        JobTreeElement[] jobTreeElements = FinishedJobs.getInstance().getKeptElements();
        int i = jobTreeElements.length - 1;
        while (i >= 0) {
            Job job;
            JobInfo ji;
            if (jobTreeElements[i] instanceof JobInfo && !(ji = (JobInfo)jobTreeElements[i]).isReported() && (job = ji.getJob()) != null) {
                IStatus status = job.getResult();
                if (status != null && status.getSeverity() == 4) {
                    StatusAdapter statusAdapter = StatusAdapterHelper.getInstance().getStatusAdapter(ji);
                    if (statusAdapter == null) {
                        statusAdapter = new StatusAdapter(status);
                    }
                    StatusManager.getManager().handle(statusAdapter, 2);
                    if (FinishedJobs.keep(ji)) {
                        ji.setReported(true);
                    } else {
                        this.removeTopElement(ji);
                    }
                }
                if (this.execute(ji, job)) {
                    return;
                }
            }
            --i;
        }
        this.progressRegion.processDoubleClick();
        this.refresh();
    }

    private boolean execute(JobInfo ji, Job job) {
        Object prop = job.getProperty(IProgressConstants2.ACTION_PROPERTY);
        if (prop instanceof IAction && ((IAction)prop).isEnabled()) {
            IAction action = (IAction)prop;
            action.run();
            this.removeTopElement(ji);
            return true;
        }
        prop = job.getProperty(IProgressConstants2.COMMAND_PROPERTY);
        if (prop instanceof ParameterizedCommand) {
            ParameterizedCommand command = (ParameterizedCommand)prop;
            WorkbenchWindow window = this.getWindow();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IHandlerService service = (IHandlerService)window.getService(clazz);
            Throwable exception = null;
            try {
                service.executeCommand(command, null);
                this.removeTopElement(ji);
            }
            catch (ExecutionException e) {
                exception = e;
            }
            catch (NotDefinedException e) {
                exception = e;
            }
            catch (NotEnabledException e) {
                exception = e;
            }
            catch (NotHandledException e) {
                exception = e;
            }
            if (exception != null) {
                Status status = new Status(4, "org.eclipse.ui", exception.getMessage(), exception);
                StatusManager.getManager().handle((IStatus)status, 3);
            }
            return true;
        }
        return false;
    }

    private void removeTopElement(JobInfo ji) {
        JobTreeElement topElement = (JobTreeElement)ji.getParent();
        if (topElement == null) {
            topElement = ji;
        }
        FinishedJobs.getInstance().remove(topElement);
    }

    private IAction getAction(Job job) {
        Object property = job.getProperty(IProgressConstants2.ACTION_PROPERTY);
        if (property instanceof IAction) {
            return (IAction)property;
        }
        return null;
    }

    private void refresh() {
        if (!PlatformUI.isWorkbenchRunning()) {
            return;
        }
        if (this.toolbar == null || this.toolbar.isDisposed()) {
            return;
        }
        JobTreeElement[] jobTreeElements = FinishedJobs.getInstance().getKeptElements();
        int i = jobTreeElements.length - 1;
        while (i >= 0) {
            JobInfo ji;
            Job job;
            if (jobTreeElements[i] instanceof JobInfo && (job = (ji = (JobInfo)jobTreeElements[i]).getJob()) != null && !ji.isReported()) {
                IStatus status = job.getResult();
                if (status != null && status.getSeverity() == 4) {
                    this.initButton(this.errorImage, NLS.bind((String)ProgressMessages.ProgressAnimationItem_error, (Object)job.getName()));
                    return;
                }
                IAction action = this.getAction(job);
                if (action != null && action.isEnabled()) {
                    String tt = action.getToolTipText();
                    if (tt == null || tt.trim().length() == 0) {
                        tt = NLS.bind((String)ProgressMessages.ProgressAnimationItem_ok, (Object)job.getName());
                    }
                    this.initButton(this.okImage, tt);
                    return;
                }
                this.initButton(this.noneImage, ProgressMessages.ProgressAnimationItem_tasks);
                return;
            }
            --i;
        }
        if (this.animationRunning) {
            this.initButton(this.noneImage, ProgressMessages.ProgressAnimationItem_tasks);
            return;
        }
        this.toolbar.setVisible(false);
    }

    private void initButton(Image im, final String tt) {
        this.toolButton.setImage(im);
        this.toolButton.setToolTipText(tt);
        this.toolbar.setVisible(true);
        this.toolbar.getParent().layout();
        this.toolbar.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = tt;
            }
        });
    }

    protected Control createAnimationItem(Composite parent) {
        GridData gd;
        if (this.okImage == null) {
            Display display = parent.getDisplay();
            this.noneImage = WorkbenchImages.getWorkbenchImageDescriptor("progress/progress_none.gif").createImage((Device)display);
            this.okImage = WorkbenchImages.getWorkbenchImageDescriptor("progress/progress_ok.gif").createImage((Device)display);
            this.errorImage = WorkbenchImages.getWorkbenchImageDescriptor("progress/progress_error.gif").createImage((Device)display);
        }
        this.top = new Composite(parent, 0);
        this.top.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                FinishedJobs.getInstance().removeListener(ProgressAnimationItem.this);
                ProgressAnimationItem.this.noneImage.dispose();
                ProgressAnimationItem.this.okImage.dispose();
                ProgressAnimationItem.this.errorImage.dispose();
            }
        });
        boolean isCarbon = Util.isMac();
        GridLayout gl = new GridLayout();
        if (this.isHorizontal()) {
            gl.numColumns = isCarbon ? 3 : 2;
        }
        gl.marginHeight = 0;
        gl.marginWidth = 0;
        if (this.isHorizontal()) {
            gl.horizontalSpacing = 2;
        } else {
            gl.verticalSpacing = 2;
        }
        this.top.setLayout((Layout)gl);
        this.bar = new ProgressBar(this.top, this.flags | 2);
        this.bar.setVisible(false);
        this.bar.addMouseListener(this.mouseListener);
        int hh = 12;
        if (this.isHorizontal()) {
            gd = new GridData(1, 0x1000000, true, false);
            gd.heightHint = hh;
        } else {
            gd = new GridData(0x1000000, 1, false, true);
            gd.widthHint = hh;
        }
        this.bar.setLayoutData((Object)gd);
        this.toolbar = new ToolBar(this.top, 0x800000);
        this.toolbar.setVisible(false);
        this.toolButton = new ToolItem(this.toolbar, 0);
        this.toolButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                ProgressAnimationItem.this.doAction();
            }
        });
        if (isCarbon) {
            new Label(this.top, 0).setLayoutData((Object)new GridData(4, 4));
        }
        this.refresh();
        return this.top;
    }

    private boolean isHorizontal() {
        return (this.flags & 0x100) != 0;
    }

    public Control getControl() {
        return this.top;
    }

    void animationDone() {
        super.animationDone();
        this.animationRunning = false;
        if (this.bar.isDisposed()) {
            return;
        }
        this.bar.setVisible(false);
        this.refresh();
    }

    public boolean animationRunning() {
        return this.animationRunning;
    }

    void animationStart() {
        super.animationStart();
        this.animationRunning = true;
        if (this.bar.isDisposed()) {
            return;
        }
        this.bar.setVisible(true);
        this.refresh();
    }

    public void removed(JobTreeElement info) {
        Display display = Display.getDefault();
        display.asyncExec(new Runnable(){

            public void run() {
                ProgressAnimationItem.this.refresh();
            }
        });
    }

    public void finished(JobTreeElement jte) {
        Display display = Display.getDefault();
        display.asyncExec(new Runnable(){

            public void run() {
                ProgressAnimationItem.this.refresh();
            }
        });
    }
}

