/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 */
package org.eclipse.jface.text.contentassist;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.internal.text.InformationControlReplacer;
import org.eclipse.jface.text.AbstractInformationControlManager;
import org.eclipse.jface.text.AbstractReusableInformationControlCreator;
import org.eclipse.jface.text.DefaultInformationControl;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IInformationControlExtension3;
import org.eclipse.jface.text.contentassist.AdditionalInfoController;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension3;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension5;
import org.eclipse.jface.text.contentassist.JFaceTextMessages;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;

class AdditionalInfoController
extends AbstractInformationControlManager {
    private Table fProposalTable;
    private SelectionListener fSelectionListener = new TableSelectionListener();
    private final int fDelay;
    private Timer fTimer;
    private ICompletionProposal fProposal;
    private Object fInformation;

    AdditionalInfoController(IInformationControlCreator creator, int delay) {
        super(creator);
        this.fDelay = delay;
        this.setAnchor(ANCHOR_RIGHT);
        this.setFallbackAnchors(new AbstractInformationControlManager.Anchor[]{ANCHOR_RIGHT, ANCHOR_LEFT, ANCHOR_BOTTOM});
        int spacing = -1;
        this.setMargins(spacing, spacing);
        InformationControlReplacer replacer = new InformationControlReplacer(new DefaultPresenterControlCreator());
        this.getInternalAccessor().setInformationControlReplacer(replacer);
    }

    public void install(Control control) {
        if (this.fProposalTable == control) {
            return;
        }
        super.install((Control)control.getShell());
        Assert.isTrue((boolean)(control instanceof Table));
        this.fProposalTable = (Table)control;
        this.fProposalTable.addSelectionListener(this.fSelectionListener);
        this.getInternalAccessor().getInformationControlReplacer().install((Control)this.fProposalTable);
        this.fTimer = new Timer(this.fProposalTable.getDisplay(), this.fDelay){

            protected void showInformation(ICompletionProposal proposal, Object info) {
                InformationControlReplacer replacer = AdditionalInfoController.this.getInternalAccessor().getInformationControlReplacer();
                if (replacer != null) {
                    replacer.hideInformationControl();
                }
                AdditionalInfoController.this.showInformation(proposal, info);
            }
        };
    }

    public void disposeInformationControl() {
        if (this.fTimer != null) {
            this.fTimer.terminate();
            this.fTimer = null;
        }
        this.fProposal = null;
        this.fInformation = null;
        if (this.fProposalTable != null && !this.fProposalTable.isDisposed()) {
            this.fProposalTable.removeSelectionListener(this.fSelectionListener);
            this.fProposalTable = null;
        }
        super.disposeInformationControl();
    }

    public void handleTableSelectionChanged() {
        TableItem item;
        Object d;
        TableItem[] selection;
        if (this.fProposalTable != null && !this.fProposalTable.isDisposed() && this.fProposalTable.isVisible() && (selection = this.fProposalTable.getSelection()) != null && selection.length > 0 && (d = (item = selection[0]).getData()) instanceof ICompletionProposal) {
            ICompletionProposal p = (ICompletionProposal)d;
            this.fTimer.reset(p);
        }
    }

    void showInformation(ICompletionProposal proposal, Object info) {
        if (this.fProposalTable == null || this.fProposalTable.isDisposed()) {
            return;
        }
        if (this.fProposal == proposal && (info == null && this.fInformation == null || info != null && info.equals(this.fInformation))) {
            return;
        }
        this.fInformation = info;
        this.fProposal = proposal;
        this.showInformation();
    }

    protected void computeInformation() {
        if (this.fProposal instanceof ICompletionProposalExtension3) {
            this.setCustomInformationControlCreator(((ICompletionProposalExtension3)((Object)this.fProposal)).getInformationControlCreator());
        } else {
            this.setCustomInformationControlCreator(null);
        }
        Point size = this.fProposalTable.getShell().getSize();
        this.setInformation(this.fInformation, new Rectangle(0, 0, size.x, size.y));
    }

    protected Point computeLocation(Rectangle subjectArea, Point controlSize, AbstractInformationControlManager.Anchor anchor) {
        Point location = super.computeLocation(subjectArea, controlSize, anchor);
        Rectangle trim = this.fProposalTable.getShell().computeTrim(0, 0, 0, 0);
        location.x += trim.x;
        location.y += trim.y;
        return location;
    }

    protected Point computeSizeConstraints(Control subjectControl, IInformationControl informationControl) {
        Point sizeConstraint = super.computeSizeConstraints(subjectControl, informationControl);
        Point size = subjectControl.getShell().getSize();
        if (this.fInformationControl instanceof IInformationControlExtension3) {
            Rectangle shellTrim = ((IInformationControlExtension3)((Object)this.fInformationControl)).computeTrim();
            size.x -= shellTrim.width;
            size.y -= shellTrim.height;
        }
        if (sizeConstraint.x < size.x) {
            sizeConstraint.x = size.x;
        }
        if (sizeConstraint.y < size.y) {
            sizeConstraint.y = size.y;
        }
        return sizeConstraint;
    }

    protected void hideInformationControl() {
        super.hideInformationControl();
        if (this.fTimer != null) {
            this.fTimer.reset(null);
        }
    }

    protected boolean canClearDataOnHide() {
        return false;
    }

    public IInformationControl getCurrentInformationControl2() {
        return this.getInternalAccessor().getCurrentInformationControl();
    }

    private static class DefaultPresenterControlCreator
    extends AbstractReusableInformationControlCreator {
        private DefaultPresenterControlCreator() {
        }

        public IInformationControl doCreateInformationControl(Shell shell) {
            return new DefaultInformationControl(shell, true);
        }
    }

    private class TableSelectionListener
    implements SelectionListener {
        private TableSelectionListener() {
        }

        public void widgetSelected(SelectionEvent e) {
            AdditionalInfoController.this.handleTableSelectionChanged();
        }

        public void widgetDefaultSelected(SelectionEvent e) {
        }
    }

    private static abstract class Timer {
        private static final int DELAY_UNTIL_JOB_IS_SCHEDULED = 50;
        private final Task IDLE = new Task(this){
            final /* synthetic */ Timer this$1;
            {
                this.this$1 = timer;
            }

            public void run() {
                Assert.isTrue((boolean)false);
            }

            public Task nextTask() {
                Assert.isTrue((boolean)false);
                return null;
            }

            public long delay() {
                return Long.MAX_VALUE;
            }

            public String toString() {
                return "IDLE";
            }
        };
        private final Task FIRST_WAIT = new Task(this){
            final /* synthetic */ Timer this$1;
            {
                this.this$1 = timer;
            }

            public void run() {
                ICompletionProposalExtension5 proposal = this.this$1.getCurrentProposalEx();
                Job job = new Job(this, JFaceTextMessages.getString("AdditionalInfoController.job_name"), proposal){
                    final /* synthetic */ 2 this$2;
                    private final /* synthetic */ ICompletionProposalExtension5 val$proposal;
                    {
                        super($anonymous0);
                        this.this$2 = var1_1;
                        this.val$proposal = iCompletionProposalExtension5;
                    }

                    protected IStatus run(IProgressMonitor monitor) {
                        Object info;
                        try {
                            info = this.val$proposal.getAdditionalProposalInfo(monitor);
                        }
                        catch (RuntimeException x) {
                            return new Status(2, "org.eclipse.jface.text", 0, "", (Throwable)x);
                        }
                        2.access$0(this.this$2).setInfo((ICompletionProposal)((Object)this.val$proposal), info);
                        return Status.OK_STATUS;
                    }
                };
                job.schedule();
            }

            public Task nextTask() {
                return Timer.access$0(this.this$1);
            }

            public long delay() {
                return 50L;
            }

            public String toString() {
                return "FIRST_WAIT";
            }

            static /* synthetic */ Timer access$0(2 var0) {
                return var0.this$1;
            }
        };
        private final Task SECOND_WAIT = new Task(this){
            final /* synthetic */ Timer this$1;
            {
                this.this$1 = timer;
            }

            public void run() {
                this.this$1.allowShowing();
            }

            public Task nextTask() {
                return Timer.access$1(this.this$1);
            }

            public long delay() {
                return Timer.access$2(this.this$1) - 50;
            }

            public String toString() {
                return "SECOND_WAIT";
            }
        };
        private final Task LEGACY_WAIT = new Task(this){
            final /* synthetic */ Timer this$1;
            {
                this.this$1 = timer;
            }

            public void run() {
                ICompletionProposal proposal = this.this$1.getCurrentProposal();
                if (!Timer.access$3(this.this$1).isDisposed()) {
                    Timer.access$3(this.this$1).asyncExec(new Runnable(this, proposal){
                        final /* synthetic */ 5 this$2;
                        private final /* synthetic */ ICompletionProposal val$proposal;
                        {
                            this.this$2 = var1_1;
                            this.val$proposal = iCompletionProposal;
                        }

                        /*
                         * WARNING - Removed try catching itself - possible behaviour change.
                         */
                        public void run() {
                            Timer timer = 5.access$0(this.this$2);
                            synchronized (timer) {
                                if (this.val$proposal == 5.access$0(this.this$2).getCurrentProposal()) {
                                    String info = this.val$proposal.getAdditionalProposalInfo();
                                    5.access$0(this.this$2).showInformation(this.val$proposal, info);
                                }
                            }
                        }
                    });
                }
            }

            public Task nextTask() {
                return Timer.access$1(this.this$1);
            }

            public long delay() {
                return Timer.access$2(this.this$1);
            }

            public String toString() {
                return "LEGACY_WAIT";
            }

            static /* synthetic */ Timer access$0(5 var0) {
                return var0.this$1;
            }
        };
        private final Task EXIT = new Task(this){
            final /* synthetic */ Timer this$1;
            {
                this.this$1 = timer;
            }

            public long delay() {
                return 1L;
            }

            public Task nextTask() {
                Assert.isTrue((boolean)false);
                return Timer.access$4(this.this$1);
            }

            public void run() {
                Assert.isTrue((boolean)false);
            }

            public String toString() {
                return "EXIT";
            }
        };
        private final Thread fThread;
        private Task fTask;
        private long fNextWakeup;
        private ICompletionProposal fCurrentProposal = null;
        private Object fCurrentInfo = null;
        private boolean fAllowShowing = false;
        private final Display fDisplay;
        private final int fDelay;

        public Timer(Display display, int delay) {
            this.fDisplay = display;
            this.fDelay = delay;
            long current = System.currentTimeMillis();
            this.schedule(this.IDLE, current);
            this.fThread = new Thread(new Runnable(this){
                final /* synthetic */ Timer this$1;
                {
                    this.this$1 = timer;
                }

                public void run() {
                    try {
                        Timer.access$5(this.this$1);
                    }
                    catch (InterruptedException interruptedException) {}
                }
            }, JFaceTextMessages.getString("InfoPopup.info_delay_timer_name"));
            this.fThread.start();
        }

        public final synchronized void terminate() {
            this.schedule(this.EXIT, System.currentTimeMillis());
            this.notifyAll();
        }

        public final synchronized void reset(ICompletionProposal p) {
            if (this.fCurrentProposal != p) {
                this.fCurrentProposal = p;
                this.fCurrentInfo = null;
                this.fAllowShowing = false;
                long oldWakeup = this.fNextWakeup;
                Task task = this.taskOnReset(p);
                this.schedule(task, System.currentTimeMillis());
                if (this.fNextWakeup < oldWakeup) {
                    this.notifyAll();
                }
            }
        }

        private Task taskOnReset(ICompletionProposal p) {
            if (p == null) {
                return this.IDLE;
            }
            if (this.isExt5(p)) {
                return this.FIRST_WAIT;
            }
            return this.LEGACY_WAIT;
        }

        private synchronized void loop() throws InterruptedException {
            long current = System.currentTimeMillis();
            Task task = this.currentTask();
            while (task != this.EXIT) {
                long delay = this.fNextWakeup - current;
                if (delay <= 0L) {
                    task.run();
                    task = task.nextTask();
                    this.schedule(task, current);
                    continue;
                }
                this.wait(delay);
                current = System.currentTimeMillis();
                task = this.currentTask();
            }
        }

        private Task currentTask() {
            return this.fTask;
        }

        private void schedule(Task task, long current) {
            this.fTask = task;
            long nextWakeup = current + task.delay();
            this.fNextWakeup = nextWakeup <= current ? Long.MAX_VALUE : nextWakeup;
        }

        private boolean isExt5(ICompletionProposal p) {
            return p instanceof ICompletionProposalExtension5;
        }

        ICompletionProposal getCurrentProposal() {
            return this.fCurrentProposal;
        }

        ICompletionProposalExtension5 getCurrentProposalEx() {
            Assert.isTrue((boolean)(this.fCurrentProposal instanceof ICompletionProposalExtension5));
            return (ICompletionProposalExtension5)((Object)this.fCurrentProposal);
        }

        synchronized void setInfo(ICompletionProposal proposal, Object info) {
            if (proposal == this.fCurrentProposal) {
                this.fCurrentInfo = info;
                if (this.fAllowShowing) {
                    this.triggerShowing();
                }
            }
        }

        private void triggerShowing() {
            Object info = this.fCurrentInfo;
            if (!this.fDisplay.isDisposed()) {
                this.fDisplay.asyncExec(new Runnable(this, info){
                    final /* synthetic */ Timer this$1;
                    private final /* synthetic */ Object val$info;
                    {
                        this.this$1 = timer;
                        this.val$info = object;
                    }

                    /*
                     * WARNING - Removed try catching itself - possible behaviour change.
                     */
                    public void run() {
                        Timer timer = this.this$1;
                        synchronized (timer) {
                            if (this.val$info == Timer.access$6(this.this$1)) {
                                this.this$1.showInformation(Timer.access$7(this.this$1), this.val$info);
                            }
                        }
                    }
                });
            }
        }

        protected abstract void showInformation(ICompletionProposal var1, Object var2);

        void allowShowing() {
            this.fAllowShowing = true;
            this.triggerShowing();
        }

        static /* synthetic */ Task access$0(Timer timer) {
            return timer.SECOND_WAIT;
        }

        static /* synthetic */ Task access$1(Timer timer) {
            return timer.IDLE;
        }

        static /* synthetic */ int access$2(Timer timer) {
            return timer.fDelay;
        }

        static /* synthetic */ Display access$3(Timer timer) {
            return timer.fDisplay;
        }

        static /* synthetic */ Task access$4(Timer timer) {
            return timer.EXIT;
        }

        static /* synthetic */ void access$5(Timer timer) throws InterruptedException {
            timer.loop();
        }

        static /* synthetic */ Object access$6(Timer timer) {
            return timer.fCurrentInfo;
        }

        static /* synthetic */ ICompletionProposal access$7(Timer timer) {
            return timer.fCurrentProposal;
        }

        private abstract class Task
        implements Runnable {
            private Task() {
            }

            public abstract long delay();

            public abstract void run();

            public abstract Task nextTask();
        }
    }
}

