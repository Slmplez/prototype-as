/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.ui.progress;

import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.ui.progress.IProgressService;

public interface IWorkbenchSiteProgressService
extends IProgressService {
    public static final String BUSY_PROPERTY = "SITE_BUSY";

    public void schedule(Job var1, long var2, boolean var4);

    public void schedule(Job var1, long var2);

    public void schedule(Job var1);

    public void showBusyForFamily(Object var1);

    public void warnOfContentChange();

    public void incrementBusy();

    public void decrementBusy();
}

