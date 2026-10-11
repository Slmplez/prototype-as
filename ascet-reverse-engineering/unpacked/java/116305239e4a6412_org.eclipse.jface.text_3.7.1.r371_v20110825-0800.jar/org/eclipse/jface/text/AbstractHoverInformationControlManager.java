/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.MouseTrackListener
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.ShellAdapter
 *  org.eclipse.swt.events.ShellEvent
 *  org.eclipse.swt.events.ShellListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.ScrollBar
 *  org.eclipse.swt.widgets.Scrollable
 */
package org.eclipse.jface.text;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.internal.text.DelayedInputChangeListener;
import org.eclipse.jface.internal.text.InternalAccessor;
import org.eclipse.jface.text.AbstractInformationControlManager;
import org.eclipse.jface.text.IDelayedInputChangeProvider;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IInformationControlExtension3;
import org.eclipse.jface.text.IInformationControlExtension5;
import org.eclipse.jface.text.ITextViewerExtension8;
import org.eclipse.jface.text.source.AnnotationBarHoverManager;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.ShellAdapter;
import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.Scrollable;

public abstract class AbstractHoverInformationControlManager
extends AbstractInformationControlManager {
    private static final long HOVER_AUTO_REPLACING_DELAY = 200L;
    private MouseTracker fMouseTracker = new MouseTracker();
    private MouseEvent fHoverEvent = null;
    private int fHoverEventStateMask = 0;
    private Job fReplacingDelayJob;
    private ITextViewerExtension8.EnrichMode fEnrichMode;
    private boolean fWaitForMouseUp = false;

    protected AbstractHoverInformationControlManager(IInformationControlCreator creator) {
        super(creator);
        this.setCloser(new Closer());
        this.setHoverEnrichMode(ITextViewerExtension8.EnrichMode.AFTER_DELAY);
    }

    private boolean inKeepUpZone(int x, int y, Control subjectControl, Rectangle subjectArea, boolean blowUp) {
        if (subjectArea.contains(x, y)) {
            return true;
        }
        IInformationControl iControl = this.getCurrentInformationControl();
        if (iControl instanceof IInformationControlExtension5 && !((IInformationControlExtension5)((Object)iControl)).isVisible()) {
            iControl = null;
            if (this.getInformationControlReplacer() != null && (iControl = this.getInformationControlReplacer().getCurrentInformationControl2()) instanceof IInformationControlExtension5 && !((IInformationControlExtension5)((Object)iControl)).isVisible()) {
                return false;
            }
        }
        if (iControl instanceof IInformationControlExtension3) {
            IInformationControlExtension3 iControl3 = (IInformationControlExtension3)((Object)iControl);
            Rectangle iControlBounds = subjectControl.getDisplay().map(null, subjectControl, iControl3.getBounds());
            Rectangle totalBounds = Geometry.copy((Rectangle)iControlBounds);
            if (blowUp && this.isReplaceInProgress()) {
                int margin = this.getInformationControlReplacer().getKeepUpMargin();
                Geometry.expand((Rectangle)totalBounds, (int)margin, (int)margin, (int)margin, (int)margin);
            }
            if (!blowUp) {
                if (iControlBounds.contains(x, y)) {
                    return true;
                }
                if (subjectArea.y + subjectArea.height < iControlBounds.y) {
                    return subjectArea.y + subjectArea.height <= y && y <= totalBounds.y && subjectArea.x <= x && x <= subjectArea.x + subjectArea.width;
                }
                if (iControlBounds.x + iControlBounds.width < subjectArea.x) {
                    return iControlBounds.x + iControlBounds.width <= x && x <= subjectArea.x && iControlBounds.y <= y && y <= iControlBounds.y + iControlBounds.height;
                }
                if (subjectArea.x + subjectArea.width < iControlBounds.x) {
                    return subjectArea.x + subjectArea.width <= x && x <= iControlBounds.x && iControlBounds.y <= y && y <= iControlBounds.y + iControlBounds.height;
                }
            }
            totalBounds.add(subjectArea);
            if (totalBounds.contains(x, y)) {
                return true;
            }
        }
        return false;
    }

    boolean canMoveIntoInformationControl(IInformationControl iControl) {
        return this.fEnrichMode != null && this.canReplace(iControl);
    }

    protected void hideInformationControl() {
        this.cancelReplacingDelay();
        super.hideInformationControl();
    }

    void setHoverEnrichMode(ITextViewerExtension8.EnrichMode mode) {
        this.fEnrichMode = mode;
    }

    void replaceInformationControl(boolean takeFocus) {
        this.fWaitForMouseUp = false;
        super.replaceInformationControl(takeFocus);
    }

    boolean cancelReplacingDelay() {
        this.fWaitForMouseUp = false;
        if (this.fReplacingDelayJob != null && this.fReplacingDelayJob.getState() != 4) {
            boolean cancelled = this.fReplacingDelayJob.cancel();
            this.fReplacingDelayJob = null;
            return cancelled;
        }
        return true;
    }

    private void startReplaceInformationControl(final Display display) {
        if (this.fEnrichMode == ITextViewerExtension8.EnrichMode.ON_CLICK) {
            return;
        }
        if (this.fReplacingDelayJob != null) {
            if (this.fReplacingDelayJob.getState() != 4 && this.fReplacingDelayJob.cancel()) {
                if (this.fEnrichMode == ITextViewerExtension8.EnrichMode.IMMEDIATELY) {
                    this.fReplacingDelayJob = null;
                    if (!this.fWaitForMouseUp) {
                        this.replaceInformationControl(false);
                    }
                } else {
                    this.fReplacingDelayJob.schedule(200L);
                }
            }
            return;
        }
        this.fReplacingDelayJob = new Job("AbstractHoverInformationControlManager Replace Delayer"){

            public IStatus run(IProgressMonitor monitor) {
                if (monitor.isCanceled() || display.isDisposed()) {
                    return Status.CANCEL_STATUS;
                }
                display.syncExec(new Runnable(this, monitor){
                    final /* synthetic */ 3 this$1;
                    private final /* synthetic */ IProgressMonitor val$monitor;
                    {
                        this.this$1 = var1_1;
                        this.val$monitor = iProgressMonitor;
                    }

                    public void run() {
                        AbstractHoverInformationControlManager.access$5(3.access$0(this.this$1), null);
                        if (this.val$monitor.isCanceled()) {
                            return;
                        }
                        if (!AbstractHoverInformationControlManager.access$6(3.access$0(this.this$1))) {
                            3.access$0(this.this$1).replaceInformationControl(false);
                        }
                    }
                });
                return Status.OK_STATUS;
            }

            static /* synthetic */ AbstractHoverInformationControlManager access$0(3 var0) {
                return var0.AbstractHoverInformationControlManager.this;
            }
        };
        this.fReplacingDelayJob.setSystem(true);
        this.fReplacingDelayJob.setPriority(10);
        this.fReplacingDelayJob.schedule(200L);
    }

    protected void presentInformation() {
        if (this.fMouseTracker == null) {
            super.presentInformation();
            return;
        }
        Rectangle area = this.getSubjectArea();
        if (area != null) {
            this.fMouseTracker.setSubjectArea(area);
        }
        if (this.fMouseTracker.isMouseLost()) {
            this.fMouseTracker.computationCompleted();
            this.fMouseTracker.deactivate();
        } else {
            this.fMouseTracker.computationCompleted();
            super.presentInformation();
        }
    }

    public void setEnabled(boolean enabled) {
        boolean was = this.isEnabled();
        super.setEnabled(enabled);
        boolean is = this.isEnabled();
        if (was != is && this.fMouseTracker != null) {
            if (is) {
                this.fMouseTracker.start(this.getSubjectControl());
            } else {
                this.fMouseTracker.stop();
            }
        }
    }

    public void dispose() {
        if (this.fMouseTracker != null) {
            this.fMouseTracker.stop();
            this.fMouseTracker.fSubjectControl = null;
            this.fMouseTracker = null;
        }
        super.dispose();
    }

    protected Point getHoverEventLocation() {
        return this.fHoverEvent != null ? new Point(this.fHoverEvent.x, this.fHoverEvent.y) : new Point(-1, -1);
    }

    protected MouseEvent getHoverEvent() {
        return this.fHoverEvent;
    }

    protected int getHoverEventStateMask() {
        return this.fHoverEventStateMask;
    }

    public InternalAccessor getInternalAccessor() {
        return new AbstractInformationControlManager.MyInternalAccessor(this){

            public void setHoverEnrichMode(ITextViewerExtension8.EnrichMode mode) {
                AbstractHoverInformationControlManager.this.setHoverEnrichMode(mode);
            }
        };
    }

    static /* synthetic */ void access$5(AbstractHoverInformationControlManager abstractHoverInformationControlManager, Job job) {
        abstractHoverInformationControlManager.fReplacingDelayJob = job;
    }

    static /* synthetic */ boolean access$6(AbstractHoverInformationControlManager abstractHoverInformationControlManager) {
        return abstractHoverInformationControlManager.fWaitForMouseUp;
    }

    class Closer
    implements AbstractInformationControlManager.IInformationControlCloser,
    MouseListener,
    MouseMoveListener,
    ControlListener,
    KeyListener,
    SelectionListener,
    Listener {
        private Control fSubjectControl;
        private Rectangle fSubjectArea;
        private boolean fIsActive = false;
        private Display fDisplay;

        public void setSubjectControl(Control control) {
            this.fSubjectControl = control;
        }

        public void setInformationControl(IInformationControl control) {
        }

        public void start(Rectangle subjectArea) {
            if (this.fIsActive) {
                return;
            }
            this.fIsActive = true;
            AbstractHoverInformationControlManager.this.fWaitForMouseUp = false;
            this.fSubjectArea = subjectArea;
            if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed()) {
                this.fSubjectControl.addMouseListener((MouseListener)this);
                this.fSubjectControl.addMouseMoveListener((MouseMoveListener)this);
                this.fSubjectControl.addControlListener((ControlListener)this);
                this.fSubjectControl.addKeyListener((KeyListener)this);
                if (this.fSubjectControl instanceof Scrollable) {
                    ScrollBar hBar;
                    Scrollable scrollable = (Scrollable)this.fSubjectControl;
                    ScrollBar vBar = scrollable.getVerticalBar();
                    if (vBar != null) {
                        vBar.addSelectionListener((SelectionListener)this);
                    }
                    if ((hBar = scrollable.getHorizontalBar()) != null) {
                        hBar.addSelectionListener((SelectionListener)this);
                    }
                }
                this.fDisplay = this.fSubjectControl.getDisplay();
                if (!this.fDisplay.isDisposed()) {
                    this.fDisplay.addFilter(26, (Listener)this);
                    this.fDisplay.addFilter(37, (Listener)this);
                    this.fDisplay.addFilter(16, (Listener)this);
                    this.fDisplay.addFilter(3, (Listener)this);
                    this.fDisplay.addFilter(4, (Listener)this);
                    this.fDisplay.addFilter(5, (Listener)this);
                    this.fDisplay.addFilter(6, (Listener)this);
                    this.fDisplay.addFilter(7, (Listener)this);
                }
            }
        }

        public void stop() {
            if (!this.fIsActive) {
                return;
            }
            this.fIsActive = false;
            if (DEBUG) {
                System.out.println("AbstractHoverInformationControlManager.Closer stopped");
            }
            if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed()) {
                this.fSubjectControl.removeMouseListener((MouseListener)this);
                this.fSubjectControl.removeMouseMoveListener((MouseMoveListener)this);
                this.fSubjectControl.removeControlListener((ControlListener)this);
                this.fSubjectControl.removeKeyListener((KeyListener)this);
                if (this.fSubjectControl instanceof Scrollable) {
                    ScrollBar hBar;
                    Scrollable scrollable = (Scrollable)this.fSubjectControl;
                    ScrollBar vBar = scrollable.getVerticalBar();
                    if (vBar != null) {
                        vBar.removeSelectionListener((SelectionListener)this);
                    }
                    if ((hBar = scrollable.getHorizontalBar()) != null) {
                        hBar.removeSelectionListener((SelectionListener)this);
                    }
                }
            }
            if (this.fDisplay != null && !this.fDisplay.isDisposed()) {
                this.fDisplay.removeFilter(26, (Listener)this);
                this.fDisplay.removeFilter(37, (Listener)this);
                this.fDisplay.removeFilter(16, (Listener)this);
                this.fDisplay.removeFilter(3, (Listener)this);
                this.fDisplay.removeFilter(4, (Listener)this);
                this.fDisplay.removeFilter(5, (Listener)this);
                this.fDisplay.removeFilter(6, (Listener)this);
                this.fDisplay.removeFilter(7, (Listener)this);
            }
            this.fDisplay = null;
        }

        public void mouseMove(MouseEvent event) {
            if (!AbstractHoverInformationControlManager.this.hasInformationControlReplacer() || !AbstractHoverInformationControlManager.this.canMoveIntoInformationControl(AbstractHoverInformationControlManager.this.getCurrentInformationControl())) {
                if (!this.fSubjectArea.contains(event.x, event.y)) {
                    AbstractHoverInformationControlManager.this.hideInformationControl();
                }
            } else if (AbstractHoverInformationControlManager.this.getCurrentInformationControl() != null && !AbstractHoverInformationControlManager.this.getCurrentInformationControl().isFocusControl() && !AbstractHoverInformationControlManager.this.inKeepUpZone(event.x, event.y, this.fSubjectControl, this.fSubjectArea, true)) {
                AbstractHoverInformationControlManager.this.hideInformationControl();
            }
        }

        public void mouseUp(MouseEvent event) {
        }

        public void mouseDown(MouseEvent event) {
            AbstractHoverInformationControlManager.this.hideInformationControl();
        }

        public void mouseDoubleClick(MouseEvent event) {
            AbstractHoverInformationControlManager.this.hideInformationControl();
        }

        public void controlResized(ControlEvent event) {
            AbstractHoverInformationControlManager.this.hideInformationControl();
        }

        public void controlMoved(ControlEvent event) {
            AbstractHoverInformationControlManager.this.hideInformationControl();
        }

        public void keyReleased(KeyEvent event) {
        }

        public void keyPressed(KeyEvent event) {
            AbstractHoverInformationControlManager.this.hideInformationControl();
        }

        public void widgetSelected(SelectionEvent e) {
            AbstractHoverInformationControlManager.this.hideInformationControl();
        }

        public void widgetDefaultSelected(SelectionEvent e) {
        }

        public void handleEvent(Event event) {
            switch (event.type) {
                case 26: 
                case 37: {
                    if (!AbstractHoverInformationControlManager.this.hasInformationControlReplacer()) {
                        AbstractHoverInformationControlManager.this.hideInformationControl();
                        break;
                    }
                    if (AbstractHoverInformationControlManager.this.isReplaceInProgress()) break;
                    IInformationControl infoControl = AbstractHoverInformationControlManager.this.getCurrentInformationControl();
                    if (event.widget instanceof Control && infoControl instanceof IInformationControlExtension5) {
                        IInformationControlExtension5 iControl5 = (IInformationControlExtension5)((Object)infoControl);
                        Control control = (Control)event.widget;
                        if (!iControl5.containsControl(control)) {
                            AbstractHoverInformationControlManager.this.hideInformationControl();
                            break;
                        }
                        if (event.type != 37 || !AbstractHoverInformationControlManager.this.cancelReplacingDelay()) break;
                        AbstractHoverInformationControlManager.this.replaceInformationControl(false);
                        break;
                    }
                    if (infoControl == null || !infoControl.isFocusControl() || !AbstractHoverInformationControlManager.this.cancelReplacingDelay()) break;
                    AbstractHoverInformationControlManager.this.replaceInformationControl(true);
                    break;
                }
                case 3: 
                case 4: {
                    if (!AbstractHoverInformationControlManager.this.hasInformationControlReplacer()) {
                        AbstractHoverInformationControlManager.this.hideInformationControl();
                        break;
                    }
                    if (AbstractHoverInformationControlManager.this.isReplaceInProgress()) break;
                    IInformationControl infoControl = AbstractHoverInformationControlManager.this.getCurrentInformationControl();
                    if (event.widget instanceof Control && infoControl instanceof IInformationControlExtension5) {
                        IInformationControlExtension5 iControl5 = (IInformationControlExtension5)((Object)infoControl);
                        Control control = (Control)event.widget;
                        if (!iControl5.containsControl(control)) {
                            AbstractHoverInformationControlManager.this.hideInformationControl();
                            break;
                        }
                        if (!AbstractHoverInformationControlManager.this.cancelReplacingDelay()) break;
                        if (event.type == 4) {
                            this.stop();
                            if (infoControl instanceof IDelayedInputChangeProvider) {
                                IDelayedInputChangeProvider delayedICP = (IDelayedInputChangeProvider)((Object)infoControl);
                                DelayedInputChangeListener inputChangeListener = new DelayedInputChangeListener(delayedICP, AbstractHoverInformationControlManager.this.getInformationControlReplacer());
                                delayedICP.setDelayedInputChangeListener(inputChangeListener);
                                control.getShell().getDisplay().timerExec(1000, new Runnable(this, delayedICP){
                                    final /* synthetic */ Closer this$1;
                                    private final /* synthetic */ IDelayedInputChangeProvider val$delayedICP;
                                    {
                                        this.this$1 = closer;
                                        this.val$delayedICP = iDelayedInputChangeProvider;
                                    }

                                    public void run() {
                                        this.val$delayedICP.setDelayedInputChangeListener(null);
                                    }
                                });
                            }
                            control.getShell().getDisplay().asyncExec(new Runnable(this){
                                final /* synthetic */ Closer this$1;
                                {
                                    this.this$1 = closer;
                                }

                                public void run() {
                                    Closer.access$0(this.this$1).replaceInformationControl(true);
                                }
                            });
                            break;
                        }
                        AbstractHoverInformationControlManager.this.fWaitForMouseUp = true;
                        break;
                    }
                    this.handleMouseMove(event);
                    break;
                }
                case 16: {
                    IInformationControl iControl = AbstractHoverInformationControlManager.this.getCurrentInformationControl();
                    if (iControl == null || iControl.isFocusControl()) break;
                    AbstractHoverInformationControlManager.this.hideInformationControl();
                    break;
                }
                case 5: 
                case 6: 
                case 7: {
                    this.handleMouseMove(event);
                }
            }
        }

        private void handleMouseMove(Event event) {
            if (!(event.widget instanceof Control)) {
                return;
            }
            Control eventControl = (Control)event.widget;
            Point mouseLoc = event.display.map(eventControl, this.fSubjectControl, event.x, event.y);
            if (this.fSubjectArea.contains(mouseLoc)) {
                return;
            }
            IInformationControl iControl = AbstractHoverInformationControlManager.this.getCurrentInformationControl();
            if (!AbstractHoverInformationControlManager.this.hasInformationControlReplacer() || !AbstractHoverInformationControlManager.this.canMoveIntoInformationControl(iControl)) {
                if (AbstractHoverInformationControlManager.this instanceof AnnotationBarHoverManager && AbstractHoverInformationControlManager.this.getInternalAccessor().getAllowMouseExit()) {
                    return;
                }
                AbstractHoverInformationControlManager.this.hideInformationControl();
                return;
            }
            IInformationControlExtension3 iControl3 = (IInformationControlExtension3)((Object)iControl);
            Rectangle controlBounds = iControl3.getBounds();
            if (controlBounds != null) {
                Rectangle tooltipBounds = event.display.map(null, eventControl, controlBounds);
                if (tooltipBounds.contains(event.x, event.y)) {
                    if (!AbstractHoverInformationControlManager.this.isReplaceInProgress() && event.type != 7) {
                        AbstractHoverInformationControlManager.this.startReplaceInformationControl(event.display);
                    }
                    return;
                }
                AbstractHoverInformationControlManager.this.cancelReplacingDelay();
            }
            if (!this.fSubjectControl.getBounds().contains(mouseLoc) && !AbstractHoverInformationControlManager.this.inKeepUpZone(mouseLoc.x, mouseLoc.y, this.fSubjectControl, this.fSubjectArea, true)) {
                AbstractHoverInformationControlManager.this.hideInformationControl();
                return;
            }
        }

        static /* synthetic */ AbstractHoverInformationControlManager access$0(Closer closer) {
            return closer.AbstractHoverInformationControlManager.this;
        }
    }

    class MouseTracker
    extends ShellAdapter
    implements MouseTrackListener,
    MouseMoveListener {
        private static final int EPSILON = 3;
        private Rectangle fHoverArea;
        private Rectangle fSubjectArea;
        private Control fSubjectControl;
        private boolean fIsInRestartMode = false;
        private boolean fIsComputing = false;
        private boolean fMouseLostWhileComputing = false;
        private boolean fShellDeactivatedWhileComputing = false;

        public void setSubjectArea(Rectangle subjectArea) {
            Assert.isNotNull((Object)subjectArea);
            this.fSubjectArea = subjectArea;
        }

        public void start(Control subjectControl) {
            this.fSubjectControl = subjectControl;
            if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed()) {
                this.fSubjectControl.addMouseTrackListener((MouseTrackListener)this);
            }
            this.fIsInRestartMode = false;
            this.fIsComputing = false;
            this.fMouseLostWhileComputing = false;
            this.fShellDeactivatedWhileComputing = false;
        }

        public void stop() {
            if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed()) {
                this.fSubjectControl.removeMouseTrackListener((MouseTrackListener)this);
                this.fSubjectControl.removeMouseMoveListener((MouseMoveListener)this);
                this.fSubjectControl.getShell().removeShellListener((ShellListener)this);
            }
        }

        public void mouseHover(MouseEvent event) {
            if (this.fIsComputing || this.fIsInRestartMode || this.fSubjectControl != null && !this.fSubjectControl.isDisposed() && this.fSubjectControl.getShell() != this.fSubjectControl.getShell().getDisplay().getActiveShell()) {
                if (DEBUG) {
                    System.out.println("AbstractHoverInformationControlManager...mouseHover: @ " + event.x + "/" + event.y + " : hover cancelled: fIsComputing= " + this.fIsComputing + ", fIsInRestartMode= " + this.fIsInRestartMode);
                }
                return;
            }
            this.fIsInRestartMode = true;
            this.fIsComputing = true;
            this.fMouseLostWhileComputing = false;
            this.fShellDeactivatedWhileComputing = false;
            AbstractHoverInformationControlManager.this.fHoverEventStateMask = event.stateMask;
            AbstractHoverInformationControlManager.this.fHoverEvent = event;
            this.fHoverArea = new Rectangle(event.x - 3, event.y - 3, 6, 6);
            if (this.fHoverArea.x < 0) {
                this.fHoverArea.x = 0;
            }
            if (this.fHoverArea.y < 0) {
                this.fHoverArea.y = 0;
            }
            this.setSubjectArea(this.fHoverArea);
            if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed()) {
                this.fSubjectControl.addMouseMoveListener((MouseMoveListener)this);
                this.fSubjectControl.getShell().addShellListener((ShellListener)this);
            }
            AbstractHoverInformationControlManager.this.doShowInformation();
        }

        protected void deactivate() {
            if (this.fIsComputing) {
                return;
            }
            this.fIsInRestartMode = false;
            if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed()) {
                this.fSubjectControl.removeMouseMoveListener((MouseMoveListener)this);
                this.fSubjectControl.getShell().removeShellListener((ShellListener)this);
            }
        }

        public void mouseEnter(MouseEvent e) {
        }

        public void mouseExit(MouseEvent e) {
            if (!(AbstractHoverInformationControlManager.this.hasInformationControlReplacer() && AbstractHoverInformationControlManager.this.canMoveIntoInformationControl(AbstractHoverInformationControlManager.this.getCurrentInformationControl()) && AbstractHoverInformationControlManager.this.inKeepUpZone(e.x, e.y, this.fSubjectControl, this.fSubjectArea, false))) {
                this.fMouseLostWhileComputing = true;
                this.deactivate();
            }
        }

        public void mouseMove(MouseEvent event) {
            if (!AbstractHoverInformationControlManager.this.hasInformationControlReplacer() || !AbstractHoverInformationControlManager.this.canMoveIntoInformationControl(AbstractHoverInformationControlManager.this.getCurrentInformationControl())) {
                if (!this.fSubjectArea.contains(event.x, event.y)) {
                    this.deactivate();
                }
            } else if (!AbstractHoverInformationControlManager.this.inKeepUpZone(event.x, event.y, this.fSubjectControl, this.fSubjectArea, false)) {
                this.deactivate();
            }
        }

        public void shellDeactivated(ShellEvent e) {
            this.fShellDeactivatedWhileComputing = true;
            this.deactivate();
        }

        public void shellIconified(ShellEvent e) {
            this.fShellDeactivatedWhileComputing = true;
            this.deactivate();
        }

        public void computationCompleted() {
            this.fIsComputing = false;
            this.fMouseLostWhileComputing = false;
            this.fShellDeactivatedWhileComputing = false;
        }

        public boolean isMouseLost() {
            if (this.fMouseLostWhileComputing || this.fShellDeactivatedWhileComputing) {
                return true;
            }
            if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed()) {
                Display display = this.fSubjectControl.getDisplay();
                Point p = display.getCursorLocation();
                if (!this.fSubjectArea.contains(p = this.fSubjectControl.toControl(p)) && !this.fHoverArea.contains(p)) {
                    return true;
                }
            }
            return false;
        }
    }
}

