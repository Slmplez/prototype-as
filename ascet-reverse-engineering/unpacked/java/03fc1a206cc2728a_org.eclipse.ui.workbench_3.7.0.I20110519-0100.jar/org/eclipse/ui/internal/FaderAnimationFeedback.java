/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.AnimationEngine;
import org.eclipse.ui.internal.AnimationFeedbackBase;

public class FaderAnimationFeedback
extends AnimationFeedbackBase {
    private Image backingStore;
    static boolean useCopy = true;

    public FaderAnimationFeedback(Shell parentShell) {
        super(parentShell);
    }

    public void dispose() {
        super.dispose();
        if (!this.backingStore.isDisposed()) {
            this.backingStore.dispose();
        }
    }

    public void initialize(AnimationEngine engine) {
        Rectangle psRect = this.getBaseShell().getBounds();
        this.getAnimationShell().setBounds(psRect);
        System.out.println("Start time = " + System.currentTimeMillis());
        if (useCopy) {
            this.backingStore = new Image((Device)this.getAnimationShell().getDisplay(), psRect);
            GC gc = new GC((Drawable)this.getAnimationShell());
            gc.copyArea(this.backingStore, psRect.x, psRect.y);
            gc.dispose();
        } else {
            System.out.println("use printImage");
        }
        this.getAnimationShell().setAlpha(254);
        this.getAnimationShell().setBackgroundImage(this.backingStore);
        this.getAnimationShell().setVisible(true);
        System.out.println("End time = " + System.currentTimeMillis());
    }

    public void renderStep(AnimationEngine engine) {
        this.getAnimationShell().setAlpha((int)(255.0 - engine.amount() * 255.0));
    }
}

