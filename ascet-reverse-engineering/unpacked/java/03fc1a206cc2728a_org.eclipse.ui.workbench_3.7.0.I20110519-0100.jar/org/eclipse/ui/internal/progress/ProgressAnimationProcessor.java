/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.ui.internal.progress;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.progress.AnimationItem;
import org.eclipse.ui.internal.progress.AnimationManager;
import org.eclipse.ui.internal.progress.IAnimationProcessor;
import org.eclipse.ui.internal.progress.ProgressAnimationItem;

class ProgressAnimationProcessor
implements IAnimationProcessor {
    AnimationManager manager;
    List items = Collections.synchronizedList(new ArrayList());

    ProgressAnimationProcessor(AnimationManager animationManager) {
        this.manager = animationManager;
    }

    public void startAnimationLoop(IProgressMonitor monitor) {
        if (this.items.size() == 0) {
            return;
        }
        if (!PlatformUI.isWorkbenchRunning()) {
            return;
        }
        while (this.manager.isAnimated() && !monitor.isCanceled()) {
        }
        ProgressAnimationItem[] animationItems = this.getAnimationItems();
        int i = 0;
        while (i < animationItems.length) {
            animationItems[i].animationDone();
            ++i;
        }
    }

    public void addItem(AnimationItem item) {
        Assert.isTrue((boolean)(item instanceof ProgressAnimationItem));
        this.items.add(item);
    }

    public void removeItem(AnimationItem item) {
        Assert.isTrue((boolean)(item instanceof ProgressAnimationItem));
        this.items.remove(item);
    }

    public boolean hasItems() {
        return this.items.size() > 0;
    }

    public void itemsInactiveRedraw() {
    }

    public void animationStarted() {
        ProgressAnimationItem[] animationItems = this.getAnimationItems();
        int i = 0;
        while (i < animationItems.length) {
            ((AnimationItem)animationItems[i]).animationStart();
            ++i;
        }
    }

    public int getPreferredWidth() {
        return 30;
    }

    private ProgressAnimationItem[] getAnimationItems() {
        ProgressAnimationItem[] animationItems = new ProgressAnimationItem[this.items.size()];
        this.items.toArray(animationItems);
        return animationItems;
    }

    public void animationFinished() {
        ProgressAnimationItem[] animationItems = this.getAnimationItems();
        int i = 0;
        while (i < animationItems.length) {
            ((AnimationItem)animationItems[i]).animationDone();
            ++i;
        }
    }

    public boolean isProcessorJob(Job job) {
        return false;
    }
}

