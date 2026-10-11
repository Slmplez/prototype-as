/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.ui.internal.progress.AnimationItem;

interface IAnimationProcessor {
    public void addItem(AnimationItem var1);

    public void removeItem(AnimationItem var1);

    public boolean hasItems();

    public void animationStarted();

    public void animationFinished();

    public int getPreferredWidth();

    public boolean isProcessorJob(Job var1);
}

