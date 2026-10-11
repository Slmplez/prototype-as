/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.AnimationFeedbackBase;
import org.eclipse.ui.internal.RectangleAnimationFeedbackBase;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.tweaklets.Animations;
import org.eclipse.ui.internal.tweaklets.Tweaklets;
import org.eclipse.ui.internal.util.PrefUtil;

public class AnimationEngine
extends Job {
    public static final int TICK_TIMER = 1;
    public static final int FRAME_COUNT = 2;
    public static final int unlimitedDuration = -1;
    private boolean enableAnimations;
    private long startTime;
    private long curTime;
    private long prevTime;
    private int timingStyle = 1;
    private long frameCount;
    private boolean animationCanceled = false;
    private long sleepAmount;
    private Display display;
    private AnimationFeedbackBase feedbackRenderer;
    private int duration;
    private Runnable animationStep = new Runnable(){

        public void run() {
            if (AnimationEngine.this.animationCanceled) {
                return;
            }
            AnimationEngine.this.prevTime = AnimationEngine.this.curTime;
            AnimationEngine.this.curTime = System.currentTimeMillis();
            if (AnimationEngine.this.isUpdateStep()) {
                AnimationEngine.this.updateDisplay();
                AnimationEngine animationEngine = AnimationEngine.this;
                animationEngine.frameCount = animationEngine.frameCount + 1L;
            }
        }
    };

    public AnimationEngine(AnimationFeedbackBase animationFeedback, int durationIn) {
        this(animationFeedback, durationIn, 0L);
    }

    public AnimationEngine(AnimationFeedbackBase animationFeedback, int durationIn, long sleepAmountIn) {
        super(WorkbenchMessages.RectangleAnimation_Animating_Rectangle);
        this.sleepAmount = sleepAmountIn;
        this.feedbackRenderer = animationFeedback;
        this.duration = durationIn;
        IPreferenceStore preferenceStore = PrefUtil.getAPIPreferenceStore();
        this.enableAnimations = preferenceStore.getBoolean("ENABLE_ANIMATIONS");
        if (!this.enableAnimations) {
            return;
        }
        this.animationCanceled = false;
        this.display = this.feedbackRenderer.getAnimationShell().getDisplay();
        animationFeedback.getAnimationShell().addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                AnimationEngine.this.cancelAnimation();
            }
        });
        this.setSystem(true);
        this.feedbackRenderer.initialize(this);
        this.curTime = this.startTime = System.currentTimeMillis();
    }

    public AnimationFeedbackBase getFeedback() {
        return this.feedbackRenderer;
    }

    protected void updateDisplay() {
        if (this.animationCanceled) {
            return;
        }
        this.feedbackRenderer.renderStep(this);
    }

    protected boolean isUpdateStep() {
        if (this.duration == -1 || this.timingStyle == 2) {
            return true;
        }
        return this.prevTime != this.curTime;
    }

    private boolean done() {
        return this.animationCanceled || this.amount() >= 1.0;
    }

    public double amount() {
        if (this.duration == -1) {
            return 0.0;
        }
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

    protected IStatus run(IProgressMonitor monitor) {
        if (!this.enableAnimations) {
            return Status.OK_STATUS;
        }
        this.display.syncExec(new Runnable(){

            public void run() {
                if (!AnimationEngine.this.animationCanceled) {
                    AnimationEngine.this.animationCanceled = !AnimationEngine.this.feedbackRenderer.jobInit(AnimationEngine.this);
                }
            }
        });
        if (this.animationCanceled) {
            return Status.CANCEL_STATUS;
        }
        this.curTime = this.startTime = System.currentTimeMillis();
        while (!this.done() && !this.animationCanceled) {
            this.display.syncExec(this.animationStep);
            try {
                Thread.sleep(this.sleepAmount);
            }
            catch (InterruptedException interruptedException) {}
        }
        if (this.animationCanceled) {
            return Status.CANCEL_STATUS;
        }
        this.display.syncExec(new Runnable(){

            public void run() {
                AnimationEngine.this.feedbackRenderer.dispose();
            }
        });
        return Status.OK_STATUS;
    }

    public void cancelAnimation() {
        this.animationCanceled = true;
        this.feedbackRenderer.dispose();
        this.cancel();
    }

    public long getFrameCount() {
        return this.frameCount;
    }

    public static void createTweakedAnimation(Shell shell, int duration, Rectangle start, Rectangle end) {
        RectangleAnimationFeedbackBase feedback = ((Animations)Tweaklets.get(Animations.KEY)).createFeedback(shell);
        feedback.addStartRect(start);
        feedback.addEndRect(end);
        AnimationEngine animation = new AnimationEngine(feedback, 400);
        animation.schedule();
    }
}

