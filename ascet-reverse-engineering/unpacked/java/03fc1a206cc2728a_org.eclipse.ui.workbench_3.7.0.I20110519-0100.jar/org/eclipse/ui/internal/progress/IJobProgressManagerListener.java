/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.ui.internal.progress.GroupInfo;
import org.eclipse.ui.internal.progress.JobInfo;

interface IJobProgressManagerListener {
    public void addJob(JobInfo var1);

    public void addGroup(GroupInfo var1);

    public void refreshJobInfo(JobInfo var1);

    public void refreshGroup(GroupInfo var1);

    public void refreshAll();

    public void removeJob(JobInfo var1);

    public void removeGroup(GroupInfo var1);

    public boolean showsDebug();
}

