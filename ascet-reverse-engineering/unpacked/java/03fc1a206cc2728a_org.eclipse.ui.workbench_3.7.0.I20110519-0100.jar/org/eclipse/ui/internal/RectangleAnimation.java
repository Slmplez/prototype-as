/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.DefaultAnimationFeedback;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.util.PrefUtil;

public class RectangleAnimation
extends Job {
    public static final int TICK_TIMER = 1;
    public static final int FRAME_COUNT = 2;
    private Display display;
    private boolean enableAnimations;
    private int timingStyle = 1;
    private int duration;
    private DefaultAnimationFeedback feedbackRenderer;
    private long frameCount;
    private long startTime;
    private long curTime;
    private long prevTime;
    private Runnable animationStep = new Runnable(){

        public void run() {
            RectangleAnimation.this.prevTime = RectangleAnimation.this.curTime;
            RectangleAnimation.this.curTime = System.currentTimeMillis();
            if (RectangleAnimation.this.curTime != RectangleAnimation.this.prevTime) {
                RectangleAnimation.this.clockTick();
            }
            if (RectangleAnimation.this.isUpdateStep()) {
                RectangleAnimation.this.updateDisplay();
                RectangleAnimation rectangleAnimation = RectangleAnimation.this;
                rectangleAnimation.frameCount = rectangleAnimation.frameCount + 1L;
            }
        }
    };

    private boolean done() {
        return this.amount() >= 1.0;
    }

    public static Rectangle interpolate(Rectangle start, Rectangle end, double amount) {
        double initialWeight = 1.0 - amount;
        Rectangle result = new Rectangle((int)((double)start.x * initialWeight + (double)end.x * amount), (int)((double)start.y * initialWeight + (double)end.y * amount), (int)((double)start.width * initialWeight + (double)end.width * amount), (int)((double)start.height * initialWeight + (double)end.height * amount));
        return result;
    }

    public RectangleAnimation(Shell parentShell, Rectangle start, Rectangle end, int duration) {
        super(WorkbenchMessages.RectangleAnimation_Animating_Rectangle);
        IPreferenceStore preferenceStore = PrefUtil.getAPIPreferenceStore();
        this.enableAnimations = preferenceStore.getBoolean("ENABLE_ANIMATIONS");
        if (!this.enableAnimations) {
            return;
        }
        this.display = parentShell.getDisplay();
        this.duration = duration;
        this.setSystem(true);
        this.feedbackRenderer = AnimationFeedbackFactory.createAnimationRenderer(parentShell);
        this.feedbackRenderer.initialize(parentShell, start, end);
        this.curTime = this.startTime = System.currentTimeMillis();
    }

    public RectangleAnimation(Shell parentShell, Rectangle start, Rectangle end) {
        this(parentShell, start, end, 400);
    }

    public void addStartRect(Rectangle rect) {
        if (this.feedbackRenderer != null) {
            this.feedbackRenderer.addStartRect(rect);
        }
    }

    public void addEndRect(Rectangle rect) {
        if (this.feedbackRenderer != null) {
            this.feedbackRenderer.addEndRect(rect);
        }
    }

    public void addStartRect(Control ctrl) {
        Rectangle ctrlBounds = ctrl.getBounds();
        Rectangle startRect = Geometry.toDisplay((Control)ctrl.getParent(), (Rectangle)ctrlBounds);
        this.addStartRect(startRect);
    }

    public void addEndRect(Control ctrl) {
        Rectangle ctrlBounds = ctrl.getBounds();
        Rectangle endRect = Geometry.toDisplay((Control)ctrl.getParent(), (Rectangle)ctrlBounds);
        this.addEndRect(endRect);
    }

    protected void clockTick() {
    }

    protected boolean isUpdateStep() {
        switch (this.timingStyle) {
            case 1: {
                return this.prevTime != this.curTime;
            }
            case 2: {
                return true;
            }
        }
        return false;
    }

    private double amount() {
        double amount = 0.0;
        switch (this.timingStyle) {
            case 1: {
                amount = (double)(this.curTime - this.startTime) / (double)this.duration;
                break;
            }
            case 2: {
                amount = (double)this.frameCount / (double)this.duration;
            }
        }
        if (amount > 1.0) {
            amount = 1.0;
        }
        return amount;
    }

    protected void updateDisplay() {
        this.feedbackRenderer.renderStep(this.amount());
    }

    protected IStatus run(IProgressMonitor monitor) {
        boolean isEmpty;
        if (!this.enableAnimations || this.feedbackRenderer == null) {
            return Status.OK_STATUS;
        }
        boolean bl = isEmpty = this.feedbackRenderer.getStartRects().size() == 0;
        if (isEmpty) {
            return Status.OK_STATUS;
        }
        this.display.syncExec(new Runnable(){

            public void run() {
                RectangleAnimation.this.feedbackRenderer.jobInit();
            }
        });
        this.curTime = this.startTime = System.currentTimeMillis();
        while (!this.done()) {
            this.display.syncExec(this.animationStep);
            Thread.yield();
        }
        this.display.syncExec(new Runnable(){

            public void run() {
                RectangleAnimation.this.feedbackRenderer.dispose();
            }
        });
        return Status.OK_STATUS;
    }

    private static class AnimationFeedbackFactory {
        private AnimationFeedbackFactory() {
        }

        public static DefaultAnimationFeedback createAnimationRenderer(Shell parentShell) {
            return new DefaultAnimationFeedback();
        }
    }
}

