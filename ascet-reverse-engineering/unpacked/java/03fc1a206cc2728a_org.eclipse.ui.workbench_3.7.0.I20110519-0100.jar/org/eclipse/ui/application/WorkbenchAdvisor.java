/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.application;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.application.IActionBarConfigurer;
import org.eclipse.ui.application.IWorkbenchConfigurer;
import org.eclipse.ui.application.IWorkbenchWindowConfigurer;
import org.eclipse.ui.application.WorkbenchWindowAdvisor;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.UISynchronizer;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindowConfigurer;
import org.eclipse.ui.internal.application.CompatibilityWorkbenchWindowAdvisor;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.model.ContributionComparator;
import org.eclipse.ui.statushandlers.AbstractStatusHandler;
import org.eclipse.ui.statushandlers.StatusManager;
import org.eclipse.ui.statushandlers.WorkbenchErrorHandler;

public abstract class WorkbenchAdvisor {
    public static final int FILL_PROXY = 1;
    public static final int FILL_MENU_BAR = 2;
    public static final int FILL_COOL_BAR = 4;
    public static final int FILL_STATUS_LINE = 8;
    private IWorkbenchConfigurer workbenchConfigurer;
    private AbstractStatusHandler workbenchErrorHandler;
    private boolean introOpened;

    protected WorkbenchAdvisor() {
    }

    public final void internalBasicInitialize(IWorkbenchConfigurer configurer) {
        if (this.workbenchConfigurer != null) {
            throw new IllegalStateException();
        }
        this.workbenchConfigurer = configurer;
        this.initialize(configurer);
    }

    public void initialize(IWorkbenchConfigurer configurer) {
    }

    protected IWorkbenchConfigurer getWorkbenchConfigurer() {
        return this.workbenchConfigurer;
    }

    public synchronized AbstractStatusHandler getWorkbenchErrorHandler() {
        if (this.workbenchErrorHandler == null) {
            this.workbenchErrorHandler = new WorkbenchErrorHandler();
        }
        return this.workbenchErrorHandler;
    }

    public void preStartup() {
    }

    public void postStartup() {
    }

    public boolean preShutdown() {
        return true;
    }

    public void postShutdown() {
    }

    public void eventLoopException(Throwable exception) {
        if (exception == null) {
            return;
        }
        try {
            StatusManager.getManager().handle((IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, "Unhandled event loop exception", exception));
            if (WorkbenchPlugin.DEBUG) {
                exception.printStackTrace();
            }
        }
        catch (Throwable e) {
            System.err.println("Error while logging event loop exception:");
            exception.printStackTrace();
            System.err.println("Logging exception:");
            e.printStackTrace();
        }
    }

    public void eventLoopIdle(Display display) {
        display.sleep();
    }

    public WorkbenchWindowAdvisor createWorkbenchWindowAdvisor(IWorkbenchWindowConfigurer configurer) {
        return new CompatibilityWorkbenchWindowAdvisor(this, configurer);
    }

    public void preWindowOpen(IWorkbenchWindowConfigurer configurer) {
    }

    public void fillActionBars(IWorkbenchWindow window, IActionBarConfigurer configurer, int flags) {
    }

    public void postWindowRestore(IWorkbenchWindowConfigurer configurer) throws WorkbenchException {
    }

    public void openIntro(IWorkbenchWindowConfigurer configurer) {
        if (this.introOpened) {
            return;
        }
        this.introOpened = true;
        boolean showIntro = PrefUtil.getAPIPreferenceStore().getBoolean("showIntro");
        if (!showIntro) {
            return;
        }
        if (this.getWorkbenchConfigurer().getWorkbench().getIntroManager().hasIntro()) {
            PrefUtil.getAPIPreferenceStore().setValue("showIntro", false);
            PrefUtil.saveAPIPrefs();
            this.getWorkbenchConfigurer().getWorkbench().getIntroManager().showIntro(configurer.getWindow(), false);
        }
    }

    public void postWindowCreate(IWorkbenchWindowConfigurer configurer) {
    }

    public void postWindowOpen(IWorkbenchWindowConfigurer configurer) {
    }

    public boolean preWindowShellClose(IWorkbenchWindowConfigurer configurer) {
        return true;
    }

    public void postWindowClose(IWorkbenchWindowConfigurer configurer) {
    }

    public boolean isApplicationMenu(IWorkbenchWindowConfigurer configurer, String menuId) {
        return false;
    }

    public IAdaptable getDefaultPageInput() {
        return null;
    }

    public abstract String getInitialWindowPerspectiveId();

    public String getMainPreferencePageId() {
        return null;
    }

    public void createWindowContents(IWorkbenchWindowConfigurer configurer, Shell shell) {
        ((WorkbenchWindowConfigurer)configurer).createDefaultContents(shell);
    }

    public boolean openWindows() {
        final Display display = PlatformUI.getWorkbench().getDisplay();
        final boolean[] result = new boolean[1];
        final boolean[] initDone = new boolean[1];
        final Throwable[] error = new Throwable[1];
        Thread initThread = new Thread(){

            /*
             * Unable to fully structure code
             */
            public void run() {
                try {
                    UISynchronizer.startupThread.set(Boolean.TRUE);
                    myConfigurer = new IWorkbenchConfigurer[1];
                    StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(this, myConfigurer){
                        final /* synthetic */ 1 this$1;
                        private final /* synthetic */ IWorkbenchConfigurer[] val$myConfigurer;
                        {
                            this.this$1 = var1_1;
                            this.val$myConfigurer = iWorkbenchConfigurerArray;
                        }

                        public void runWithException() throws Throwable {
                            this.val$myConfigurer[0] = 1.access$0(this.this$1).getWorkbenchConfigurer();
                        }
                    });
                    status = myConfigurer[0].restoreState();
                    if (status.isOK()) ** GOTO lbl13
                    if (status.getCode() == 2) {
                        result[0] = false;
                        return;
                    }
                    try {
                        if (status.getCode() == 1) {
                            myConfigurer[0].openFirstTimeWindow();
                        }
lbl13:
                        // 4 sources

                        result[0] = true;
                    }
                    catch (Throwable e) {
                        error[0] = e;
                    }
                }
                finally {
                    initDone[0] = true;
                    display.wake();
                }
            }

            static /* synthetic */ WorkbenchAdvisor access$0(1 var0) {
                return var0.WorkbenchAdvisor.this;
            }
        };
        initThread.start();
        while (true) {
            if (display.readAndDispatch()) {
                continue;
            }
            if (initDone[0]) break;
            display.sleep();
        }
        if (error[0] instanceof Error) {
            throw (Error)error[0];
        }
        if (error[0] instanceof RuntimeException) {
            throw (RuntimeException)error[0];
        }
        return result[0];
    }

    public IStatus saveState(IMemento memento) {
        return Status.OK_STATUS;
    }

    public IStatus restoreState(IMemento memento) {
        return Status.OK_STATUS;
    }

    public ContributionComparator getComparatorFor(String contributionType) {
        return new ContributionComparator();
    }
}

