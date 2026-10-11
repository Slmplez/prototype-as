/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.AnimationEngine;

public abstract class AnimationFeedbackBase {
    private AnimationEngine engine;
    private Shell baseShell;
    private Shell animationShell = null;

    public AnimationFeedbackBase(Shell parentShell) {
        this.baseShell = parentShell;
        this.baseShell.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                if (AnimationFeedbackBase.this.engine != null) {
                    AnimationFeedbackBase.this.engine.cancelAnimation();
                }
            }
        });
    }

    public abstract void initialize(AnimationEngine var1);

    public abstract void renderStep(AnimationEngine var1);

    public boolean jobInit(AnimationEngine engine) {
        this.engine = engine;
        return engine != null;
    }

    public void dispose() {
        if (this.animationShell != null && !this.animationShell.isDisposed()) {
            this.animationShell.dispose();
        }
    }

    public Shell getBaseShell() {
        return this.baseShell;
    }

    public Shell getAnimationShell() {
        if (this.animationShell == null) {
            this.animationShell = new Shell(this.getBaseShell(), 16392);
            this.animationShell.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    if (AnimationFeedbackBase.this.engine != null) {
                        AnimationFeedbackBase.this.engine.cancelAnimation();
                    }
                }
            });
        }
        return this.animationShell;
    }
}

