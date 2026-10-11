/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.CTabItem
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import org.eclipse.swt.custom.CTabItem;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.AnimationEngine;
import org.eclipse.ui.internal.ImageCycleFeedbackBase;

public class AnimatedTabFeedback
extends ImageCycleFeedbackBase {
    private CTabItem tabItem;

    public AnimatedTabFeedback(Shell parentShell) {
        super(parentShell);
    }

    public AnimatedTabFeedback(Shell parentShell, CTabItem item, Image[] images) {
        super(parentShell, images);
        this.tabItem = item;
    }

    public void initialize(AnimationEngine engine) {
        this.background = this.tabItem.getParent().getBackground();
        this.display = this.tabItem.getParent().getDisplay();
    }

    public void saveStoppedImage() {
        this.stoppedImage = this.tabItem.getImage();
    }

    public void setStoppedImage(Image image) {
        this.tabItem.setImage(image);
    }

    public void showImage(Image image) {
        if (this.tabItem.isDisposed()) {
            return;
        }
        this.tabItem.setImage(image);
    }
}

